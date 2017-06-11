package com.example.demo;

import com.vaadin.shared.ui.ValueChangeMode;
import com.vaadin.spring.annotation.SpringComponent;
import com.vaadin.spring.annotation.UIScope;
import com.vaadin.ui.*;
import com.vaadin.ui.components.grid.*;
import com.vaadin.ui.themes.ValoTheme;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Bartosz on 06.06.2017.
 */
@SpringComponent
@UIScope
public class GridLayout extends HorizontalLayout {

    private Grid<Person> grid = new Grid<>(Person.class);
    private TextField filterTextByName = new TextField();
    private Button deleteButton = new Button("Delete");

    private final PersonRepository personRepository;

    @Autowired
    public GridLayout(PersonRepository personRepository) {
        this.personRepository = personRepository;

        grid.setSizeFull();
        grid.setItems(personRepository.findAll());

        grid.setColumnOrder("id", "name", "lastName", "email", "city", "postCode");

        grid.getEditor().setEnabled(true);

        grid.getColumn("name").setEditorComponent(new TextField());
        grid.getColumn("lastName").setEditorComponent(new TextField());
        grid.getColumn("email").setEditorComponent(new TextField());
        grid.getColumn("city").setEditorComponent(new TextField());
        grid.getColumn("postCode").setEditorComponent(new TextField());

        MultiSelectionModel<Person> multiSelectionModel =
                (MultiSelectionModel<Person>) grid.setSelectionMode(Grid.SelectionMode.MULTI);

        grid.getEditor().addSaveListener(e -> modifyPerson(e));

        HeaderRow headerRow = grid.prependHeaderRow();

        HeaderCell personalDate = headerRow.join(
                headerRow.getCell("name"),
                headerRow.getCell("lastName"));
        personalDate.setText("Personal data");
        headerRow.getCell("id").setText("Ordinal data");
        headerRow.getCell("email").setText("E-Data");

        HeaderCell placeDate = headerRow.join(
                headerRow.getCell("city"),
                headerRow.getCell("postCode"));
        placeDate.setText("Residential data");

        FooterRow footerRow = grid.appendFooterRow();

        filterTextByName.setPlaceholder("Filter by name");
        filterTextByName.setWidth("100%");
        filterTextByName.setHeight("80%");
        filterTextByName.setValueChangeMode(ValueChangeMode.LAZY);
        filterTextByName.addValueChangeListener(e -> findByName());

        FooterCell footerCell = footerRow.join(
                footerRow.getCell("name"),
                footerRow.getCell("lastName"));
        footerCell.setComponent(filterTextByName);

        deleteButton.setStyleName(ValoTheme.BUTTON_DANGER);
        deleteButton.setEnabled(false);
        deleteButton.setWidth("100%");
        deleteButton.setHeight("30");
        multiSelectionModel.addMultiSelectionListener(e -> deleteButton.setEnabled(e.getAllSelectedItems().size() > 0));

        deleteButton.addClickListener(e -> deletePeople());

        footerRow.getCell("id").setComponent(deleteButton);

        addComponentsAndExpand(grid);
    }

    private void findByName() {
        List<Person> people = personRepository.findByNameContainingIgnoreCase(filterTextByName.getValue());
        grid.setItems(people);
    }

    private void deletePeople(){
        grid.getSelectionModel().getSelectedItems().forEach((Person p) -> personRepository.delete(p));
        Notification.show("Selected rows deleted successfully...", Notification.Type.WARNING_MESSAGE);
        grid.setItems(personRepository.findAll());
    }

    private   void modifyPerson(EditorSaveEvent<Person> e){
        personRepository.save(e.getBean());
        Notification.show("Selected row modified successfully...", Notification.Type.WARNING_MESSAGE);
        grid.setItems(personRepository.findAll());
    }
}

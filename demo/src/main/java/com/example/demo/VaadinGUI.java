package com.example.demo;

import com.vaadin.server.VaadinRequest;
import com.vaadin.spring.annotation.SpringUI;
import com.vaadin.ui.Button;
import com.vaadin.ui.UI;
import com.vaadin.ui.VerticalLayout;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Bartosz on 05.06.2017.
 */
@SpringUI
public class VaadinGUI extends UI {

    private VerticalLayout layout;

    @Autowired
    private GridLayout gridLayout;

    @Override
    protected void init(VaadinRequest vaadinRequest) {
        setLayout();
        addForm();
    }

    private void setLayout(){
        layout = new VerticalLayout();
        setContent(layout);
    }

    private void addForm(){
        layout.addComponentsAndExpand(gridLayout);
    }
}

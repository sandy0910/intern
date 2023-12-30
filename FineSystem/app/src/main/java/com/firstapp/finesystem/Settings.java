package com.firstapp.finesystem;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class Settings extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_settings);

        // Find the buttons by their IDs
        Button btnDashboard = findViewById(R.id.btnDashboard);
        Button btnFine = findViewById(R.id.btnFine);
        Button btnSettings = findViewById(R.id.btnSettings);

        // Set click listeners for the buttons
        btnDashboard.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the DashboardActivity
                Intent intent = new Intent(Settings.this, MainActivity.class);
                startActivity(intent);
            }
        });

        btnFine.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the FineActivity
                Intent intent = new Intent(Settings.this, Fine.class);
                startActivity(intent);
            }
        });

        btnSettings.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // The SettingsActivity is already open, but you can add additional logic if needed
            }
        });
    }
}

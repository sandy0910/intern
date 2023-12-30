package com.firstapp.finesystem;

import static com.firstapp.finesystem.R.id.btnDashboard;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

import com.firstapp.finesystem.Fine;
import com.firstapp.finesystem.Settings;

public class DashboardOne extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard_one);

        // Find the buttons by their IDs
        Button btnDashboard = findViewById(R.id.btnDashboard);
        Button btnFine = findViewById(R.id.btnFine);
        Button btnSettings = findViewById(R.id.btnSettings);

        // Set click listeners for the buttons
        btnDashboard.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the DashboardActivity

            }
        });

        btnFine.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the FineActivity
                Intent intent = new Intent(DashboardOne.this, Fine.class);
                startActivity(intent);
            }
        });

        btnSettings.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the SettingsActivity
                Intent intent = new Intent(DashboardOne.this, Settings.class);
                startActivity(intent);
            }
        });
    }
}

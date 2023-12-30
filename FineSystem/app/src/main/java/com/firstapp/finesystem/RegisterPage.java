package com.firstapp.finesystem;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.textfield.TextInputEditText;

public class RegisterPage extends AppCompatActivity {
    TextInputEditText editTextFullName, editTextEmail, editTextPassword;
    Button signUp;
    TextView signIn;
    SharedPreferences sharedPreferences;

    protected static final String SHARED_PREF_NAME = "myPref";
    protected static final String KEY_EMAIL = "email";
    protected static final String KEY_PASSWORD = "password";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register_page);


        editTextFullName = findViewById(R.id.fullname);
        editTextEmail = findViewById(R.id.email);
        editTextPassword = findViewById(R.id.password);
        signIn = findViewById(R.id.sign_in);
        signUp = findViewById(R.id.sign_up);


        sharedPreferences = getSharedPreferences(SHARED_PREF_NAME, MODE_PRIVATE);

        signIn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(RegisterPage.this, MainActivity.class);
                startActivity(intent);
                finish();
            }
        });

        String[] allowedEmails  ={
                "user1@ptuniv.edu.in",
                "user2@example.com",
                // Add more allowed email addresses here
        };

        signUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String email, password;
                email = String.valueOf(editTextEmail.getText());
                password = String.valueOf(editTextPassword.getText());

                if (!email.endsWith("@ptuniv.edu.in")) {
                    Toast.makeText(RegisterPage.this, "Only @ptuniv.edu.in domain is allowed for registration", Toast.LENGTH_SHORT).show();
                    return;
                }


                if (TextUtils.isEmpty(email)) {
                    Toast.makeText(RegisterPage.this, "Enter Email", Toast.LENGTH_SHORT).show();
                    return;
                }
                if (TextUtils.isEmpty(password)) {
                    Toast.makeText(RegisterPage.this, "Enter Password", Toast.LENGTH_SHORT).show();
                    return;
                }

                boolean isAllowed = false;
                for (String allowedEmail : allowedEmails) {
                    if (email.equals(allowedEmail)) {
                        isAllowed = true;
                        break;
                    }
                }

                if (isAllowed) {
                    SharedPreferences.Editor editor = sharedPreferences.edit();
                    editor.putString(KEY_EMAIL, email);
                    editor.putString(KEY_PASSWORD, password);
                    editor.apply();
                    Intent intent = new Intent(RegisterPage.this, MainActivity.class);
                    startActivity(intent);

                    Toast.makeText(RegisterPage.this, "Registered Successfully", Toast.LENGTH_SHORT).show();
                }else {
                    // Display message for unauthorized login attempt
                    Toast.makeText(RegisterPage.this, "Access Denied", Toast.LENGTH_SHORT).show();
                }

            }
        });


    }
}
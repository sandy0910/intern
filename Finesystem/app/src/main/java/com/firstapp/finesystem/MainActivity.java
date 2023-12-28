package com.firstapp.finesystem;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.firstapp.finesystem.R;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.textfield.TextInputEditText;
//import com.google.firebase.auth.AuthResult;
//import com.google.firebase.auth.FirebaseAuth;

public class MainActivity extends AppCompatActivity {
    SharedPreferences sharedPreferences;
    protected static final String SHARED_PREF_NAME = "myPref";
    protected static final String KEY_EMAIL = "email";
    protected static final String KEY_PASSWORD = "password";

    TextInputEditText editTextEmail, editTextPassword;

    Button signIn;

    TextView signUp;


    // FirebaseAuth firebaseAuth = FirebaseAuth.getInstance();

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        SharedPreferences sharedPreferences = getSharedPreferences(SHARED_PREF_NAME, MODE_PRIVATE);
        String storedEmail = sharedPreferences.getString(KEY_EMAIL, "");
        String storedPassword = sharedPreferences.getString(KEY_PASSWORD, "");

        // Use the retrieved email and password values as needed
        if (!storedEmail.isEmpty() && !storedPassword.isEmpty()) {
            Intent intent = new Intent(MainActivity.this, Home.class);
            startActivity(intent);
        }


        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        editTextEmail = findViewById(R.id.email);
        editTextPassword = findViewById(R.id.password);
        signIn = findViewById(R.id.sign_in);
        signUp = findViewById(R.id.sign_up);

        //sharedPreferences = getSharedPreferences(SHARED_PREF_NAME, MODE_PRIVATE);
        //String p_email = sharedPreferences.getString(KEY_EMAIL, RegisterPage.KEY_EMAIL);
        //String p_password = sharedPreferences.getString(KEY_PASSWORD, RegisterPage.KEY_PASSWORD);

        //Intent sintent = getIntent();

        signUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, RegisterPage.class);
                startActivity(intent);
                finish();
            }
        });


        signIn.setOnClickListener(new View.OnClickListener() {
            @SuppressLint("SetTextI18n")
            @Override
            public void onClick(View v) {
                String enteredEmail = String.valueOf(editTextEmail.getText());
                String enteredPassword = String.valueOf(editTextPassword.getText());

                if (TextUtils.isEmpty(enteredEmail) || TextUtils.isEmpty(enteredPassword)) {
                    Toast.makeText(MainActivity.this, "Enter Email and Password", Toast.LENGTH_SHORT).show();
                    return;
                }

                if (!enteredEmail.endsWith("@ptuniv.edu.in")) {
                    Toast.makeText(MainActivity.this, "Only @ptuniv.edu.in domain is allowed for registration", Toast.LENGTH_SHORT).show();
                    return;
                }

                //s_email = sintent.getStringExtra("EMAIL_KEY");
                //s_password = sintent.getStringExtra("PASSWORD_KEY");


                //SharedPreferences sharedPreferences = getSharedPreferences(SHARED_PREF_NAME, MODE_PRIVATE);
                //String storedEmail = sharedPreferences.getString(KEY_EMAIL, RegisterPage.SHARED_PREF_NAME);
                //String storedPassword = sharedPreferences.getString(KEY_PASSWORD, RegisterPage.SHARED_PREF_NAME);

                Log.d("MainActivity", "Stored Email: " + storedEmail);
                Log.d("MainActivity", "Stored Password: " + storedPassword);

                if (enteredEmail.equals(storedEmail) && enteredPassword.equals(storedPassword)) {
                    Toast.makeText(MainActivity.this, "Login Successful", Toast.LENGTH_SHORT).show();
                    Intent intent = new Intent(MainActivity.this, Home.class);
                    startActivity(intent);
                    finish();
                } else {
                    Toast.makeText(MainActivity.this, "Invalid Credentials", Toast.LENGTH_SHORT).show();
                }

            }
        });


                /*firebaseAuth.signInWithEmailAndPassword(email, password)
                    .addOnCompleteListener(new OnCompleteListener<AuthResult>() {
                        @Override
                        public void onComplete(@NonNull Task<AuthResult> task) {
                            if(task.isSuccessful()){
                                Toast.makeText(MainActivity.this, "Login Successful", Toast.LENGTH_SHORT).show();
                                Intent intent = new Intent(MainActivity.this, Home.class);
                                startActivity(intent);
                                finish();
                            }else{
                                Toast.makeText(MainActivity.this, "Authentication Failed", Toast.LENGTH_SHORT).show();
                            }
                        }
                    });*/
    }
}
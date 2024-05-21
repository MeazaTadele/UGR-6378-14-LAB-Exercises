package com.example.xmlcounter

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.activity.ComponentActivity


class MainActivity : ComponentActivity() {
    private lateinit var counterTextView: TextView
    private lateinit var incrementButton: Button
    private lateinit var resetButton: Button
    private lateinit var decrementButton: Button
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Initialize views
        counterTextView = findViewById(R.id.counterTextView)
        incrementButton = findViewById(R.id.incrementButton)
        resetButton = findViewById(R.id.resetButton)
        decrementButton = findViewById(R.id.decrementButton)

        // Set initial counter value
        counterTextView.text = count.toString()

        // Increment button click listener
        incrementButton.setOnClickListener {
            count++
            counterTextView.text = count.toString()
        }

        // Reset button click listener
        resetButton.setOnClickListener {
            count = 0
            counterTextView.text = count.toString()
        }

        // Decrement button click listener
        decrementButton.setOnClickListener {
            count--
            counterTextView.text = count.toString()
        }
    }


}

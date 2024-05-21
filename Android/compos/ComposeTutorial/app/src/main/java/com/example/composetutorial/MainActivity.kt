package com.example.composetutorial

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MessageCard("Estifanos Taye")
        }
    }
}

@Composable
fun MessageCard(name: String, color: Color = Color.Black) {
    Text(text = "Hello $name!", color = color)
}

@Preview
@Composable
fun PreviewMessageCard() {
    MessageCard(name ="Estifanos Taye", color = Color.White)
}
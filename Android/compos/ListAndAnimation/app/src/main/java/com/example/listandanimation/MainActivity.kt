package com.example.listandanimation

import android.content.res.Configuration
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.animateContentSize
import androidx.compose.foundation.Image
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.listandanimation.ui.theme.ListAndAnimationTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            ListAndAnimationTheme {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                ) {
                    Conversation(convo = sampleMessages)
                }
            }
        }
    }
}

val sampleMessages:List<Message> = List(50) {index ->
    Message("Author $index", "Body of text by $index The following part is just for increasing the size of the text so that the animation is more visible the content is out of order")
}

data class Message(val author: String, val body: String)

@Composable
fun MessageCard(msg: Message) {
    Row (modifier = Modifier
        .padding(all = 8.dp)) {
        Image(modifier = Modifier
            .size(50.dp)
            .clip(CircleShape)
            .border(
                width = 1.5.dp,
                color = MaterialTheme.colorScheme.primary,
                shape = CircleShape
            ),
            painter = painterResource(id = R.drawable.profile_image),
            contentDescription = "Profile Picture")

        Spacer(modifier = Modifier.width(8.dp))

        var isExpanded by remember { mutableStateOf(value = false)}

        val surfaceColor by animateColorAsState(label = "manage color state smoothly", targetValue = if(isExpanded) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.surface,)

        val textColor by animateColorAsState(label = "make text is visible",targetValue = if(isExpanded) MaterialTheme.colorScheme.surface else MaterialTheme.colorScheme.secondary)

        Column (modifier = Modifier.clickable { isExpanded = !isExpanded }) {
            Text(text = msg.author,
                color = MaterialTheme.colorScheme.secondary,
                fontSize = 15.sp,
                fontFamily = FontFamily.Cursive,
                style = MaterialTheme.typography.titleLarge)
            Spacer(modifier = Modifier.height(5.dp))
            Surface (shape = MaterialTheme.shapes.medium, shadowElevation = 1.dp,color = surfaceColor, modifier = Modifier
                .animateContentSize()
                .padding(all = 1.dp)){
                Text(text = msg.body,
                    color = textColor,
                    fontSize = 15.sp,
                    fontFamily = FontFamily.Cursive,
                    style = MaterialTheme.typography.bodyMedium,
                    modifier = Modifier.padding(all = 4.dp),
                    maxLines = if (isExpanded) Int.MAX_VALUE else 1
                )
            }
        }
    }
}

@Composable
fun Conversation(convo: List<Message>) {
    LazyColumn {
        items(convo.size) { index ->
            MessageCard(convo[index])
        }
    }
}

@Preview(showBackground = true, name = "Light Mode")
@Preview(showBackground = true, name = "Dark Mode", uiMode = Configuration.UI_MODE_NIGHT_YES)
@Composable
fun GreetingPreview() {
    ListAndAnimationTheme {
        Surface {
            Conversation(convo = sampleMessages)
        }
    }
}

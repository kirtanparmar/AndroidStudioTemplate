package ${escapeKotlinIdentifiers(packageName)}

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.LinearLayoutManager

class ${activityName}Activity : AppCompatActivity() {

	private lateinit var screen: Activity${activityName}Binding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
		screen = Activity${activityName}Binding.inflate(layoutInflater)
        setContentView(screen.root)
		screen.rv.layoutManager = LinearLayoutManager(this)
    }
}

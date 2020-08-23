package ${escapeKotlinIdentifiers(packageName)};

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;

public class ${activityName}Activity extends AppCompatActivity {

	private Activity${activityName}Binding screen;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
		screen = Activity${activityName}Binding.inflate(getLayoutInflater());
        setContentView(screen.getRoot());
		screen.rv.setLayoutManager(new LinearLayoutManager(this));
    }
}

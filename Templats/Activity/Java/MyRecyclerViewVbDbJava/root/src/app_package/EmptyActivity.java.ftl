package ${escapeKotlinIdentifiers(packageName)};

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;

public class ${activityName}Activity extends AppCompatActivity implements ${activityName}ListAdapter.CallBack {

	private Activity${activityName}Binding screen;
	private ${activityName}ListAdapter adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
		screen = Activity${activityName}Binding.inflate(getLayoutInflater());
        setContentView(screen.getRoot());
		screen.rv.setLayoutManager(new LinearLayoutManager(this));
		
		adapter = new ${activityName}ListAdapter(
			new DiffUtil.ItemCallback<${Model_Class}>() {
                    @Override
                    public boolean areItemsTheSame(@NonNull ${Model_Class} oldItem, @NonNull ${Model_Class} newItem) {
                        //TODO:Implement
                        return false;
                    }

                    @Override
                    public boolean areContentsTheSame(@NonNull ${Model_Class} oldItem, @NonNull ${Model_Class} newItem) {
                        //TODO:Implement
                        return false;
                    }
                }, this);
		
		screen.rv.setAdapter(adapter);
    }
	
	@Override
    public void itemClicked(TestModel model) {
		//TODO:Implement
    }
	
}

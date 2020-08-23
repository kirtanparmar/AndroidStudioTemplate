package ${escapeKotlinIdentifiers(packageName)};

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;

public class ${activityName}ListAdapter extends ListAdapter<${Model_Class}, ${activityName}ListAdapter.${activityName}ListAdapterViewHolder> {

    private CallBack callBack;

    public ${activityName}ListAdapter(@NonNull DiffUtil.ItemCallback<${Model_Class}> diffCallback, CallBack callBack) {
        super(diffCallback);
        this.callBack = callBack;
    }

    @NonNull
    @Override
    public ${activityName}ListAdapterViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return new ${activityName}ListAdapterViewHolder(${ListView_Binding_Class}.inflate(LayoutInflater.from(parent.getContext()), parent, false));
    }

    @Override
    public void onBindViewHolder(@NonNull ${activityName}ListAdapterViewHolder holder, int position) {
        holder.setData(getItem(position));
    }

    public class ${activityName}ListAdapterViewHolder extends RecyclerView.ViewHolder {
        ${ListView_Binding_Class} itemView;

        public ${activityName}ListAdapterViewHolder(@NonNull ${ListView_Binding_Class} itemView) {
            super(itemView.getRoot());
            this.itemView = itemView;
        }

        public void setData(final ${Model_Class} model) {
            itemView.setModel(model);
            itemView.getRoot().setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    callBack.itemClicked(model);
                }
            });
        }
    }

    interface CallBack {
        void itemClicked(${Model_Class} model);
    }

}
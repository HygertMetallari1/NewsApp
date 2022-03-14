package com.newsapp.news.ui.main

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.newsapp.news.data.models.ModelItem
import com.newsapp.news.databinding.ModelListItemBinding


class AdapterHome : ListAdapter<ModelItem, AdapterHome.ViewHolder>(HomeDiffutil()) {

    inner class ViewHolder(private val binding: ModelListItemBinding) : RecyclerView.ViewHolder(binding.root) {
        fun bind (item : ModelItem){
            binding.apply {
                object1 = item
                executePendingBindings()
            }
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val inflator = LayoutInflater.from(parent.context)
        val binding = ModelListItemBinding.inflate(inflator, parent, false)
        return  ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val item = getItem(position)
        holder.bind(item)
    }

    private class HomeDiffutil : DiffUtil.ItemCallback<ModelItem>() {
        override fun areItemsTheSame(oldItem: ModelItem, newItem: ModelItem): Boolean =
            oldItem == newItem

        override fun areContentsTheSame(oldItem: ModelItem, newItem: ModelItem): Boolean =
            oldItem == newItem
    }
}
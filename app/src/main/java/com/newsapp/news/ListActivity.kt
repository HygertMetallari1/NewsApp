package com.newsapp.news

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.newsapp.news.data.models.ModelItem
import com.newsapp.news.databinding.ActivityListBinding
import com.newsapp.news.ui.main.AdapterHome

class ListActivity : AppCompatActivity() {
    lateinit var binding: ActivityListBinding
    private val adapter by lazy { AdapterHome() }
    private val list : MutableList<ModelItem> = ArrayList()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityListBinding.inflate(layoutInflater)
        setContentView(binding.root)
        inside()
    }

    private fun inside() {
        binding.apply{
            recyclerviewList.adapter = adapter
            btnSave.setOnClickListener {
                val item = ModelItem(
                    id = 1,
                    name = if (etName.text.toString().isBlank()) "Bosh" else etName.text.toString(),
                    lastname = if (etLastname.text.toString().isBlank()) "Bosh" else etLastname.text.toString()
                )
                list.add(item)
                adapter.submitList(list)
            }
        }
    }
}
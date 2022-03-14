package com.newsapp.news

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.newsapp.news.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {
    lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)
        inside()
    }

    private fun inside() {

    }
}
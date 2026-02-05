
# AI Product Analytics – User Feedback & Insight System

## Overview
This project analyzes 2,000+ user feedback records to identify high-severity AI and UX issues,
prioritize product improvements, and support data-driven product decisions.

## Dataset
- user_feedback_dataset.csv (2,000+ rows)
- Fields: user_id, feedback_type, severity, sentiment, feature_area, resolved, created_date

## Tools Used
- Python (Pandas)
- SQL (PostgreSQL compatible)

## Key Insights
- ~35% feedback entries are high severity
- AI Accuracy and UX issues dominate critical feedback
- Severity × frequency scoring identifies top 5 product risks

## Repository Structure
ai-product-feedback-analytics/
- user_feedback_dataset.csv
- ai_product_feedback_analysis.ipynb
- business_queries.sql
- README.md

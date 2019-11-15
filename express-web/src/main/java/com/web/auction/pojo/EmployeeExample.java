package com.web.auction.pojo;

import java.util.ArrayList;
import java.util.List;

public class EmployeeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public EmployeeExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andEidIsNull() {
            addCriterion("eid is null");
            return (Criteria) this;
        }

        public Criteria andEidIsNotNull() {
            addCriterion("eid is not null");
            return (Criteria) this;
        }

        public Criteria andEidEqualTo(Integer value) {
            addCriterion("eid =", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidNotEqualTo(Integer value) {
            addCriterion("eid <>", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidGreaterThan(Integer value) {
            addCriterion("eid >", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidGreaterThanOrEqualTo(Integer value) {
            addCriterion("eid >=", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidLessThan(Integer value) {
            addCriterion("eid <", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidLessThanOrEqualTo(Integer value) {
            addCriterion("eid <=", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidIn(List<Integer> values) {
            addCriterion("eid in", values, "eid");
            return (Criteria) this;
        }

        public Criteria andEidNotIn(List<Integer> values) {
            addCriterion("eid not in", values, "eid");
            return (Criteria) this;
        }

        public Criteria andEidBetween(Integer value1, Integer value2) {
            addCriterion("eid between", value1, value2, "eid");
            return (Criteria) this;
        }

        public Criteria andEidNotBetween(Integer value1, Integer value2) {
            addCriterion("eid not between", value1, value2, "eid");
            return (Criteria) this;
        }

        public Criteria andEnameIsNull() {
            addCriterion("ename is null");
            return (Criteria) this;
        }

        public Criteria andEnameIsNotNull() {
            addCriterion("ename is not null");
            return (Criteria) this;
        }

        public Criteria andEnameEqualTo(String value) {
            addCriterion("ename =", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameNotEqualTo(String value) {
            addCriterion("ename <>", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameGreaterThan(String value) {
            addCriterion("ename >", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameGreaterThanOrEqualTo(String value) {
            addCriterion("ename >=", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameLessThan(String value) {
            addCriterion("ename <", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameLessThanOrEqualTo(String value) {
            addCriterion("ename <=", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameLike(String value) {
            addCriterion("ename like", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameNotLike(String value) {
            addCriterion("ename not like", value, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameIn(List<String> values) {
            addCriterion("ename in", values, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameNotIn(List<String> values) {
            addCriterion("ename not in", values, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameBetween(String value1, String value2) {
            addCriterion("ename between", value1, value2, "ename");
            return (Criteria) this;
        }

        public Criteria andEnameNotBetween(String value1, String value2) {
            addCriterion("ename not between", value1, value2, "ename");
            return (Criteria) this;
        }

        public Criteria andEageIsNull() {
            addCriterion("eage is null");
            return (Criteria) this;
        }

        public Criteria andEageIsNotNull() {
            addCriterion("eage is not null");
            return (Criteria) this;
        }

        public Criteria andEageEqualTo(String value) {
            addCriterion("eage =", value, "eage");
            return (Criteria) this;
        }

        public Criteria andEageNotEqualTo(String value) {
            addCriterion("eage <>", value, "eage");
            return (Criteria) this;
        }

        public Criteria andEageGreaterThan(String value) {
            addCriterion("eage >", value, "eage");
            return (Criteria) this;
        }

        public Criteria andEageGreaterThanOrEqualTo(String value) {
            addCriterion("eage >=", value, "eage");
            return (Criteria) this;
        }

        public Criteria andEageLessThan(String value) {
            addCriterion("eage <", value, "eage");
            return (Criteria) this;
        }

        public Criteria andEageLessThanOrEqualTo(String value) {
            addCriterion("eage <=", value, "eage");
            return (Criteria) this;
        }

        public Criteria andEageLike(String value) {
            addCriterion("eage like", value, "eage");
            return (Criteria) this;
        }

        public Criteria andEageNotLike(String value) {
            addCriterion("eage not like", value, "eage");
            return (Criteria) this;
        }

        public Criteria andEageIn(List<String> values) {
            addCriterion("eage in", values, "eage");
            return (Criteria) this;
        }

        public Criteria andEageNotIn(List<String> values) {
            addCriterion("eage not in", values, "eage");
            return (Criteria) this;
        }

        public Criteria andEageBetween(String value1, String value2) {
            addCriterion("eage between", value1, value2, "eage");
            return (Criteria) this;
        }

        public Criteria andEageNotBetween(String value1, String value2) {
            addCriterion("eage not between", value1, value2, "eage");
            return (Criteria) this;
        }

        public Criteria andEtimeIsNull() {
            addCriterion("etime is null");
            return (Criteria) this;
        }

        public Criteria andEtimeIsNotNull() {
            addCriterion("etime is not null");
            return (Criteria) this;
        }

        public Criteria andEtimeEqualTo(String value) {
            addCriterion("etime =", value, "etime");
            return (Criteria) this;
        }

        public Criteria andEtimeNotEqualTo(String value) {
            addCriterion("etime <>", value, "etime");
            return (Criteria) this;
        }

        public Criteria andEtimeGreaterThan(String value) {
            addCriterion("etime >", value, "etime");
            return (Criteria) this;
        }

        public Criteria andEtimeGreaterThanOrEqualTo(String value) {
            addCriterion("etime >=", value, "etime");
            return (Criteria) this;
        }

        public Criteria andEtimeLessThan(String value) {
            addCriterion("etime <", value, "etime");
            return (Criteria) this;
        }

        public Criteria andEtimeLessThanOrEqualTo(String value) {
            addCriterion("etime <=", value, "etime");
            return (Criteria) this;
        }

        public Criteria andEtimeLike(String value) {
            addCriterion("etime like", value, "etime");
            return (Criteria) this;
        }

        public Criteria andEtimeNotLike(String value) {
            addCriterion("etime not like", value, "etime");
            return (Criteria) this;
        }

        public Criteria andEtimeIn(List<String> values) {
            addCriterion("etime in", values, "etime");
            return (Criteria) this;
        }

        public Criteria andEtimeNotIn(List<String> values) {
            addCriterion("etime not in", values, "etime");
            return (Criteria) this;
        }

        public Criteria andEtimeBetween(String value1, String value2) {
            addCriterion("etime between", value1, value2, "etime");
            return (Criteria) this;
        }

        public Criteria andEtimeNotBetween(String value1, String value2) {
            addCriterion("etime not between", value1, value2, "etime");
            return (Criteria) this;
        }

        public Criteria andEstateIsNull() {
            addCriterion("estate is null");
            return (Criteria) this;
        }

        public Criteria andEstateIsNotNull() {
            addCriterion("estate is not null");
            return (Criteria) this;
        }

        public Criteria andEstateEqualTo(String value) {
            addCriterion("estate =", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateNotEqualTo(String value) {
            addCriterion("estate <>", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateGreaterThan(String value) {
            addCriterion("estate >", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateGreaterThanOrEqualTo(String value) {
            addCriterion("estate >=", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateLessThan(String value) {
            addCriterion("estate <", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateLessThanOrEqualTo(String value) {
            addCriterion("estate <=", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateLike(String value) {
            addCriterion("estate like", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateNotLike(String value) {
            addCriterion("estate not like", value, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateIn(List<String> values) {
            addCriterion("estate in", values, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateNotIn(List<String> values) {
            addCriterion("estate not in", values, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateBetween(String value1, String value2) {
            addCriterion("estate between", value1, value2, "estate");
            return (Criteria) this;
        }

        public Criteria andEstateNotBetween(String value1, String value2) {
            addCriterion("estate not between", value1, value2, "estate");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}
.class public final Landroidx/constraintlayout/core/PriorityGoalRow;
.super Landroidx/constraintlayout/core/ArrayRow;
.source "SourceFile"


# instance fields
.field public mAccessor:Lcom/tinder/StateMachine;

.field public mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

.field public mNumGoals:I

.field public mSortArray:[Landroidx/constraintlayout/core/SolverVariable;


# virtual methods
.method public final addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    array-length v3, v2

    if-le v0, v3, :cond_0

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mSortArray:[Landroidx/constraintlayout/core/SolverVariable;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    aput-object p1, v0, v2

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    if-le v3, v1, :cond_2

    aget-object v0, v0, v2

    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget v2, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mSortArray:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mSortArray:[Landroidx/constraintlayout/core/SolverVariable;

    new-instance v4, Landroidx/viewpager/widget/ViewPager$1;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mSortArray:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v1, p1, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public final getPivotCandidate([Z)Landroidx/constraintlayout/core/SolverVariable;
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v4, v3, v1

    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aget-boolean v5, p1, v5

    if-eqz v5, :cond_0

    goto :goto_4

    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mAccessor:Lcom/tinder/StateMachine;

    iput-object v4, v5, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    const/16 v4, 0x8

    if-ne v2, v0, :cond_3

    :goto_1
    if-ltz v4, :cond_5

    iget-object v3, v5, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v3, Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    aget v3, v3, v4

    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    if-lez v7, :cond_1

    goto :goto_4

    :cond_1
    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    aget-object v3, v3, v2

    :goto_2
    if-ltz v4, :cond_5

    iget-object v6, v3, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    aget v6, v6, v4

    iget-object v7, v5, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v7, Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, v7, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    aget v7, v7, v4

    cmpl-float v8, v7, v6

    if-nez v8, :cond_4

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    cmpg-float v3, v7, v6

    if-gez v3, :cond_5

    :goto_3
    move v2, v1

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    if-ne v2, v0, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    iget-object p0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object p0, p0, v2

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    iput-boolean v0, p1, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mAccessor:Lcom/tinder/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " goal -> ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mNumGoals:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow;->mArrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v3, v3, v2

    iput-object v3, v0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->mVariable:Landroidx/constraintlayout/core/SolverVariable;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v2, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    iget-object v4, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getCurrentSize()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_8

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v9

    iget-object v10, v0, Landroidx/constraintlayout/core/PriorityGoalRow;->mAccessor:Lcom/tinder/StateMachine;

    iput-object v8, v10, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    iget-boolean v11, v8, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    const v12, 0x38d1b717    # 1.0E-4f

    const/16 v13, 0x9

    const/4 v14, 0x0

    if-eqz v11, :cond_3

    const/4 v8, 0x1

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_2

    iget-object v15, v10, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v15, Landroidx/constraintlayout/core/SolverVariable;

    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    aget v16, v15, v11

    aget v17, v3, v11

    mul-float v17, v17, v9

    add-float v17, v17, v16

    aput v17, v15, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v15, v15, v12

    if-gez v15, :cond_1

    iget-object v15, v10, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v15, Landroidx/constraintlayout/core/SolverVariable;

    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    aput v14, v15, v11

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    if-eqz v8, :cond_7

    iget-object v8, v10, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v8, Landroidx/constraintlayout/core/PriorityGoalRow;

    iget-object v10, v10, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v10, Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v8, v10}, Landroidx/constraintlayout/core/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    goto :goto_5

    :cond_3
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v13, :cond_6

    aget v15, v3, v11

    cmpl-float v16, v15, v14

    if-eqz v16, :cond_5

    mul-float/2addr v15, v9

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v16, v16, v12

    if-gez v16, :cond_4

    move v15, v14

    :cond_4
    iget-object v6, v10, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v6, Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    aput v15, v6, v11

    goto :goto_4

    :cond_5
    iget-object v6, v10, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v6, Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->mGoalStrengthVector:[F

    aput v14, v6, v11

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    :cond_7
    :goto_5
    iget v6, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    iget v8, v1, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    iput v8, v0, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    return-void
.end method

.class public final Landroidx/databinding/ViewDataBinding$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/databinding/ViewDataBinding$8;->$r8$classId:I

    iput-object p2, p0, Landroidx/databinding/ViewDataBinding$8;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/databinding/ViewDataBinding$8;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding$8;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/core/view/MenuHostHelper;

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzad;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    move/from16 v28, v7

    goto/16 :goto_8

    :cond_1
    iget-object v10, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v10, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v4

    if-gez v11, :cond_0

    invoke-virtual {v10, v8}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-wide v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_3

    iput-wide v1, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-virtual {v8, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    goto :goto_1

    :cond_3
    sub-long v19, v1, v10

    iput-wide v1, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    iget-boolean v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    const v11, -0x800001

    const v14, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v15, 0x0

    if-eqz v10, :cond_5

    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v16, v10, v14

    if-eqz v16, :cond_4

    iget-object v12, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    float-to-double v9, v10

    iput-wide v9, v12, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iput v14, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    :cond_4
    iget-object v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v9, v9, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v9, v9

    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iput v15, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    iput-boolean v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    move/from16 v28, v7

    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_5
    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v9, v9, v14

    if-eqz v9, :cond_6

    iget-object v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v12, v9, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v12, v10

    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    move/from16 v28, v7

    float-to-double v6, v10

    const-wide/16 v16, 0x2

    div-long v26, v19, v16

    move-wide/from16 v24, v6

    move-object/from16 v21, v9

    move-wide/from16 v22, v12

    invoke-virtual/range {v21 .. v27}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    move-result-object v6

    iget-object v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    float-to-double v9, v9

    iput-wide v9, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iput v14, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    iget v9, v6, Landroidx/compose/animation/FlingCalculator;->friction:F

    float-to-double v9, v9

    iget v6, v6, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    float-to-double v12, v6

    move-object/from16 v21, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v12

    invoke-virtual/range {v21 .. v27}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    move-result-object v6

    iget v7, v6, Landroidx/compose/animation/FlingCalculator;->friction:F

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v6, v6, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    iput v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    move v6, v14

    move v7, v15

    goto :goto_4

    :cond_6
    move/from16 v28, v7

    move v6, v14

    iget-object v14, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v9, v7

    iget v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v12, v7

    move-wide/from16 v17, v12

    move v7, v15

    move-wide v15, v9

    invoke-virtual/range {v14 .. v20}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/compose/animation/FlingCalculator;

    move-result-object v9

    iget v10, v9, Landroidx/compose/animation/FlingCalculator;->friction:F

    iput v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v9, v9, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    :goto_4
    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v10, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    iget-object v12, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v13, v10

    iget-wide v6, v12, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double v6, v13, v6

    if-gez v6, :cond_7

    iget-wide v6, v12, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v6, v6

    sub-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    iget-wide v12, v12, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    cmpg-double v6, v6, v12

    if-gez v6, :cond_7

    iget-object v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v6, v6, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v6, v6

    iput v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const/4 v15, 0x0

    iput v15, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    goto/16 :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_5
    iget v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-virtual {v8, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    if-eqz v6, :cond_d

    iget-object v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    const/4 v7, 0x0

    iput-boolean v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    sget-object v7, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_8

    new-instance v9, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v9}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object v9, v7, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v9, v8}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v7, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_9

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    iput-boolean v9, v7, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_9
    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    const/4 v7, 0x0

    iput-boolean v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    :goto_7
    if-ltz v7, :cond_d

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_c

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_d
    :goto_8
    add-int/lit8 v7, v28, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_e
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v1, :cond_11

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    :goto_9
    if-ltz v1, :cond_10

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_10
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/core/view/MenuHostHelper;

    if-nez v1, :cond_12

    new-instance v1, Landroidx/core/view/MenuHostHelper;

    iget-object v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lcom/google/android/gms/tasks/zzad;

    invoke-direct {v1, v2}, Landroidx/core/view/MenuHostHelper;-><init>(Lcom/google/android/gms/tasks/zzad;)V

    iput-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/core/view/MenuHostHelper;

    :cond_12
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Landroidx/core/view/MenuHostHelper;

    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v1, Landroid/view/Choreographer;

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding$8;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_13
    return-void

    :pswitch_0
    iget-object v0, v0, Landroidx/databinding/ViewDataBinding$8;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Landroidx/lifecycle/LiveData$1;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData$1;->run()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

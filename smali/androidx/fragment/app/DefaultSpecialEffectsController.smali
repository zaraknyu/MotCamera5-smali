.class public final Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mContainer:Landroid/view/ViewGroup;

.field public mIsContainerPostponed:Z

.field public mOperationDirectionIsPop:Z

.field public final mPendingOperations:Ljava/util/ArrayList;

.field public final mRunningOperations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mOperationDirectionIsPop:Z

    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mIsContainerPostponed:Z

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public static captureTransitioningViews(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Landroidx/core/view/ViewGroupCompat;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V
    .locals 4

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/DefaultSpecialEffectsController;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Lcom/google/android/gms/dynamite/zzf;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Lcom/google/android/gms/dynamite/zzf;)Landroidx/fragment/app/DefaultSpecialEffectsController;

    move-result-object p0

    return-object p0
.end method

.method public static getOrCreateController(Landroid/view/ViewGroup;Lcom/google/android/gms/dynamite/zzf;)Landroidx/fragment/app/DefaultSpecialEffectsController;
    .locals 3

    const v0, 0x7f0a040d

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Landroidx/fragment/app/DefaultSpecialEffectsController;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController;

    return-object v1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance p1, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 8
    invoke-direct {p1, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method public static retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/Flags;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Landroidx/collection/ArrayMap$MapIterator;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap$MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/collection/ArrayMap$MapIterator;->next()Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/collection/ArrayMap$MapIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final enqueue(IILandroidx/fragment/app/FragmentStateManager;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroidx/core/os/CancellationSignal;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p3, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mergeWith(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;-><init>(IILandroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V

    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/SpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;I)V

    iget-object p2, v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mCompletionListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/SpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;I)V

    iget-object p0, v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mCompletionListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final executeOperations(Ljava/util/ArrayList;Z)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v11, v7, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v11}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->_from(Landroid/view/View;)I

    move-result v11

    iget v12, v7, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    invoke-static {v12}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v12

    if-eqz v12, :cond_2

    if-eq v12, v10, :cond_1

    if-eq v12, v9, :cond_2

    if-eq v12, v8, :cond_2

    goto :goto_0

    :cond_1
    if-eq v11, v9, :cond_0

    move-object v6, v7

    goto :goto_0

    :cond_2
    if-ne v11, v9, :cond_0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_3
    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    const-string v7, " to "

    const-string v11, "FragmentManager"

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "Executing operations from "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v14, v14, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v4, v4, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    move/from16 v16, v9

    iget-object v9, v14, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    iget v8, v9, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    iput v8, v4, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    iget v8, v9, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    iput v8, v4, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    iget v8, v9, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    iput v8, v4, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    iget v8, v9, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    iput v8, v4, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    move/from16 v9, v16

    const/4 v8, 0x3

    goto :goto_1

    :cond_5
    move/from16 v16, v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    new-instance v9, Landroidx/core/os/CancellationSignal;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->onStart()V

    iget-object v14, v4, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v14, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v15, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-direct {v15, v4, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/core/os/CancellationSignal;)V

    iput-boolean v8, v15, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mLoadedAnim:Z

    iput-boolean v2, v15, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mIsPop:Z

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroidx/core/os/CancellationSignal;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->onStart()V

    invoke-virtual {v14, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    if-eqz v2, :cond_7

    if-ne v4, v5, :cond_6

    :goto_3
    move v15, v10

    goto :goto_4

    :cond_6
    move v15, v8

    goto :goto_4

    :cond_7
    if-ne v4, v6, :cond_6

    goto :goto_3

    :goto_4
    invoke-direct {v14, v4, v9, v2, v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/core/os/CancellationSignal;ZZ)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    invoke-direct {v9, v0, v13, v4, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v4, v4, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mCompletionListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    move-result v15

    move/from16 v24, v10

    iget-object v10, v14, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v10, v10, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v8, v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    if-eqz v15, :cond_9

    move/from16 v10, v24

    :goto_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_9
    invoke-virtual {v14, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v15

    move-object/from16 v25, v3

    iget-object v3, v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    invoke-virtual {v14, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v14

    move-object/from16 v18, v4

    const-string v4, " returned Transition "

    move-object/from16 v26, v12

    const-string v12, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v15, :cond_b

    if-eqz v14, :cond_b

    if-ne v15, v14, :cond_a

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_7
    if-eqz v15, :cond_c

    goto :goto_8

    :cond_c
    move-object v15, v14

    :goto_8
    if-nez v9, :cond_d

    move-object v9, v15

    goto :goto_9

    :cond_d
    if-eqz v15, :cond_f

    if-ne v9, v15, :cond_e

    goto :goto_9

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_9
    move-object/from16 v4, v18

    move/from16 v10, v24

    move-object/from16 v3, v25

    move-object/from16 v12, v26

    goto :goto_6

    :cond_10
    move-object/from16 v25, v3

    move/from16 v24, v10

    move-object/from16 v26, v12

    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    if-nez v9, :cond_12

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    iget-object v4, v3, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    goto :goto_a

    :cond_11
    move-object v12, v6

    move-object/from16 v33, v7

    move-object/from16 v34, v13

    move-object v7, v1

    move-object v13, v11

    goto/16 :goto_23

    :cond_12
    new-instance v3, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroidx/collection/ArrayMap;

    const/4 v14, 0x0

    invoke-direct {v12, v14}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object/from16 p0, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v27, 0x0

    :goto_b
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_21

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v33, v7

    move-object/from16 v7, v18

    check-cast v7, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    iget-object v7, v7, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    if-eqz v7, :cond_20

    if-eqz v5, :cond_20

    move-object/from16 v28, v15

    iget-object v15, v5, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_1f

    move-object/from16 v29, v14

    iget-object v14, v6, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v9, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v34, v13

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v35, v1

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v30, v3

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v31, v4

    move-object/from16 v23, v10

    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_14

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    move-object/from16 v18, v3

    const/4 v3, -0x1

    if-eq v10, v3, :cond_13

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v10, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v18

    goto :goto_c

    :cond_14
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v2, :cond_15

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    goto :goto_d

    :cond_15
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    :goto_d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_16

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v10, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v19

    goto :goto_e

    :cond_16
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, ">>> entering view names <<<"

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v10, "Name: "

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v18, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v18

    goto :goto_f

    :cond_17
    const-string v3, ">>> exiting view names <<<"

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v18, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v18

    goto :goto_10

    :cond_18
    new-instance v3, Landroidx/collection/ArrayMap;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iget-object v10, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, v10}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    invoke-virtual {v3, v13}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    new-instance v10, Landroidx/collection/ArrayMap;

    invoke-direct {v10, v4}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iget-object v4, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v10, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    invoke-virtual {v10, v1}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    sget-object v4, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionCompat21;

    iget v4, v12, Landroidx/collection/SimpleArrayMap;->size:I

    add-int/lit8 v4, v4, -0x1

    :goto_11
    if-ltz v4, :cond_1a

    invoke-virtual {v12, v4}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v14

    move-object/from16 v14, v18

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10, v14}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    invoke-virtual {v12, v4}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_19
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v14, v19

    goto :goto_11

    :cond_1a
    move-object/from16 v19, v14

    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v10, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual {v12}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v4, v23

    move-object/from16 v14, v29

    move-object/from16 v1, v30

    move-object/from16 v10, v31

    move-object/from16 v7, v35

    const/4 v15, 0x0

    goto/16 :goto_17

    :cond_1b
    if-eqz v2, :cond_1c

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    goto :goto_12

    :cond_1c
    invoke-virtual/range {v19 .. v19}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    :goto_12
    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController$6;

    invoke-direct {v4, v6, v5, v2, v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$6;-><init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;ZLandroidx/collection/ArrayMap;)V

    invoke-static {v0, v4}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v14, 0x0

    if-nez v4, :cond_1d

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v9, v3, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v29, v3

    :cond_1d
    invoke-virtual {v10}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v4, v23

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1e

    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    move/from16 v13, v24

    move-object/from16 v10, v31

    invoke-direct {v3, v9, v1, v10, v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v3}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v15, 0x1

    :goto_13
    move-object/from16 v1, v30

    goto :goto_14

    :cond_1e
    move-object/from16 v10, v31

    move/from16 v15, v27

    goto :goto_13

    :goto_14
    invoke-virtual {v9, v7, v1, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v7

    move-object/from16 v23, v4

    move-object/from16 v19, v7

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v7, v35

    invoke-virtual {v7, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v27, v15

    move-object/from16 v15, v19

    :goto_15
    move-object/from16 v14, v29

    goto :goto_17

    :cond_1f
    move-object v7, v10

    move-object v10, v4

    move-object v4, v7

    move-object v7, v1

    move-object v1, v3

    move-object/from16 v34, v13

    move-object/from16 v29, v14

    goto :goto_16

    :cond_20
    move-object v7, v10

    move-object v10, v4

    move-object v4, v7

    move-object v7, v1

    move-object v1, v3

    move-object/from16 v34, v13

    move-object/from16 v29, v14

    move-object/from16 v28, v15

    :goto_16
    move-object/from16 v15, v28

    goto :goto_15

    :goto_17
    move-object v3, v10

    move-object v10, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v7

    move-object/from16 v7, v33

    move-object/from16 v13, v34

    const/16 v24, 0x1

    goto/16 :goto_b

    :cond_21
    move-object/from16 v28, v10

    move-object v10, v4

    move-object/from16 v4, v28

    move-object/from16 v33, v7

    move-object/from16 v34, v13

    move-object/from16 v29, v14

    move-object/from16 v28, v15

    move-object v7, v1

    move-object v1, v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    move-result v18

    move-object/from16 p0, v3

    iget-object v3, v15, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    if-eqz v18, :cond_22

    move-object/from16 v30, v12

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    move-object/from16 v3, p0

    move-object/from16 v12, v30

    goto :goto_18

    :cond_22
    move-object/from16 v30, v12

    iget-object v12, v15, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-virtual {v9, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v28, :cond_24

    if-eq v3, v5, :cond_23

    if-ne v3, v6, :cond_24

    :cond_23
    const/16 v18, 0x1

    goto :goto_19

    :cond_24
    const/16 v18, 0x0

    :goto_19
    if-nez v12, :cond_26

    if-nez v18, :cond_25

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    :cond_25
    move-object/from16 v18, v1

    move-object/from16 v36, v6

    move-object/from16 v35, v11

    move-object/from16 v31, v14

    move-object/from16 v14, v29

    goto/16 :goto_1d

    :cond_26
    move-object/from16 v35, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v36, v6

    iget-object v6, v3, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    move-object/from16 v31, v14

    iget-object v14, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v14, v11}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Landroid/view/View;Ljava/util/ArrayList;)V

    if-eqz v18, :cond_28

    if-ne v3, v5, :cond_27

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1a

    :cond_27
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_28
    :goto_1a
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2a

    invoke-virtual {v9, v1, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Landroid/view/View;Ljava/lang/Object;)V

    move-object v6, v12

    move-object v12, v11

    move-object v11, v6

    move-object/from16 v18, v1

    :cond_29
    move/from16 v6, v16

    goto :goto_1b

    :cond_2a
    invoke-virtual {v9, v12, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v12

    move-object/from16 v18, v9

    move-object/from16 v21, v11

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v11, v19

    move-object/from16 v12, v21

    iget v14, v3, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    move-object/from16 v18, v1

    const/4 v1, 0x3

    if-ne v14, v1, :cond_29

    move-object/from16 v1, v34

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v11, v1, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v1, Landroidx/fragment/app/Fragment$4;

    move/from16 v6, v16

    invoke-direct {v1, v6, v12}, Landroidx/fragment/app/Fragment$4;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_1b
    iget v1, v3, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    if-ne v1, v6, :cond_2c

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v27, :cond_2b

    invoke-virtual {v9, v11, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_2b
    move-object/from16 v14, v29

    goto :goto_1c

    :cond_2c
    move-object/from16 v14, v29

    invoke-virtual {v9, v14, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Landroid/view/View;Ljava/lang/Object;)V

    :goto_1c
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v15, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    if-eqz v1, :cond_2d

    invoke-virtual {v9, v13, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    goto :goto_1d

    :cond_2d
    move-object/from16 v1, v31

    invoke-virtual {v9, v1, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    :goto_1d
    move-object/from16 v3, p0

    move-object/from16 v29, v14

    move-object/from16 v1, v18

    move-object/from16 v12, v30

    move-object/from16 v14, v31

    move-object/from16 v11, v35

    move-object/from16 v6, v36

    const/16 v16, 0x2

    goto/16 :goto_18

    :cond_2e
    move-object/from16 v36, v6

    move-object/from16 v35, v11

    move-object/from16 v30, v12

    move-object v1, v14

    move-object/from16 v15, v28

    invoke-virtual {v9, v13, v1, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2f

    move-object/from16 v13, v35

    move-object/from16 v12, v36

    goto/16 :goto_23

    :cond_2f
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    move-result v10

    iget-object v11, v6, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    if-eqz v10, :cond_30

    goto :goto_1e

    :cond_30
    iget-object v10, v6, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    move-object/from16 v12, v36

    if-eqz v15, :cond_32

    if-eq v11, v5, :cond_31

    if-ne v11, v12, :cond_32

    :cond_31
    const/4 v14, 0x1

    goto :goto_1f

    :cond_32
    const/4 v14, 0x0

    :goto_1f
    if-nez v10, :cond_34

    if-eqz v14, :cond_33

    goto :goto_20

    :cond_33
    move-object/from16 v13, v35

    goto :goto_22

    :cond_34
    :goto_20
    sget-object v10, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v10

    if-nez v10, :cond_36

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_35

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "SpecialEffectsController: Container "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " has not been laid out. Completing operation "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v13, v35

    invoke-static {v13, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_35
    move-object/from16 v13, v35

    :goto_21
    invoke-virtual {v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    goto :goto_22

    :cond_36
    move-object/from16 v13, v35

    iget-object v10, v6, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    new-instance v14, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    invoke-direct {v14, v6, v11}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    invoke-virtual {v9, v1, v10, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Landroidx/fragment/app/DefaultSpecialEffectsController$1;)V

    :goto_22
    move-object/from16 v36, v12

    move-object/from16 v35, v13

    goto :goto_1e

    :cond_37
    move-object/from16 v13, v35

    move-object/from16 v12, v36

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-nez v3, :cond_38

    :goto_23
    const/4 v14, 0x0

    goto/16 :goto_2a

    :cond_38
    const/4 v3, 0x4

    invoke-static {v3, v2}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(ILjava/util/ArrayList;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v14, 0x0

    :goto_24
    if-ge v14, v6, :cond_39

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    sget-object v11, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v10}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    :cond_39
    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3b

    const-string v6, ">>>>> Beginning transition <<<<<"

    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ">>>>> SharedElementFirstOutViews <<<<<"

    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, " Name: "

    const-string v14, "View: "

    if-eqz v10, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    move-object/from16 p0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p0

    goto :goto_25

    :cond_3a
    const-string v6, ">>>>> SharedElementLastInViews <<<<<"

    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    move-object/from16 p0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p0

    goto :goto_26

    :cond_3b
    invoke-virtual {v9, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_27
    if-ge v14, v1, :cond_3f

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    sget-object v11, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v10}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_3c

    move/from16 v19, v1

    move-object/from16 v23, v6

    move-object/from16 v22, v8

    move-object/from16 v10, v30

    goto :goto_29

    :cond_3c
    move-object/from16 v23, v6

    const/4 v6, 0x0

    invoke-static {v10, v6}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v10, v30

    invoke-virtual {v10, v11}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/String;

    move-object/from16 v22, v8

    const/4 v8, 0x0

    :goto_28
    move/from16 v19, v1

    if-ge v8, v1, :cond_3e

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v11}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_29

    :cond_3d
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v19

    goto :goto_28

    :cond_3e
    :goto_29
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v30, v10

    move/from16 v1, v19

    move-object/from16 v8, v22

    move-object/from16 v6, v23

    goto :goto_27

    :cond_3f
    move/from16 v19, v1

    move-object/from16 v23, v6

    move-object/from16 v22, v8

    new-instance v18, Landroidx/fragment/app/FragmentTransitionImpl$1;

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    invoke-direct/range {v18 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl$1;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v3, v18

    move-object/from16 v1, v22

    invoke-static {v0, v3}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v14, 0x0

    invoke-static {v14, v2}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(ILjava/util/ArrayList;)V

    invoke-virtual {v9, v15, v1, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_2a
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v14

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, " has started."

    if-eqz v8, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    move-result v10

    if-eqz v10, :cond_40

    invoke-virtual {v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    :goto_2c
    move/from16 p0, v1

    goto :goto_2d

    :cond_40
    invoke-virtual {v8, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v10

    if-nez v10, :cond_41

    invoke-virtual {v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    goto :goto_2c

    :cond_41
    iget-object v10, v10, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Ljava/lang/Object;

    check-cast v10, Landroid/animation/Animator;

    if-nez v10, :cond_42

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_42
    iget-object v11, v8, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v15, v11, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 p0, v1

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring Animator set on "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " as this Fragment was involved in a Transition."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    invoke-virtual {v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    :goto_2d
    const/4 v14, 0x0

    move/from16 v1, p0

    goto :goto_2b

    :cond_44
    iget v1, v11, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    const/4 v14, 0x3

    if-ne v1, v14, :cond_45

    const/16 v30, 0x1

    goto :goto_2e

    :cond_45
    const/16 v30, 0x0

    :goto_2e
    move-object/from16 v1, v34

    if-eqz v30, :cond_46

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_46
    iget-object v6, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v27, Landroidx/fragment/app/DefaultSpecialEffectsController$2;

    move-object/from16 v28, v0

    move-object/from16 v29, v6

    move-object/from16 v32, v8

    move-object/from16 v31, v11

    invoke-direct/range {v27 .. v32}, Landroidx/fragment/app/DefaultSpecialEffectsController$2;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    move-object/from16 v11, v27

    move-object/from16 v15, v28

    move-object/from16 v0, v31

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v10, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_47

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Animator from operation "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v6, v8, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    new-instance v8, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v8, v10, v0}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    invoke-virtual {v6, v8}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    move-object/from16 v34, v1

    move-object v0, v15

    const/4 v6, 0x1

    goto :goto_2d

    :cond_48
    move-object v15, v0

    move/from16 p0, v1

    move-object/from16 v1, v34

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    iget-object v4, v3, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v7, v4, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    const-string v8, "Ignoring Animation set on "

    if-eqz p0, :cond_4a

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_49

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " as Animations cannot run alongside Transitions."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    goto :goto_2f

    :cond_4a
    if-eqz v6, :cond_4c

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " as Animations cannot run alongside Animators."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    goto :goto_2f

    :cond_4c
    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Ljava/lang/Object;

    check-cast v8, Landroid/view/animation/Animation;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v4, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4d

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    goto :goto_30

    :cond_4d
    invoke-virtual {v15, v7}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v10, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    invoke-direct {v10, v8, v15, v7}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v8, Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    invoke-direct {v8, v7, v15, v3, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController$4;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    invoke-virtual {v10, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_4e

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Animation from operation "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_30
    iget-object v8, v3, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    new-instance v10, Landroidx/fragment/app/FragmentStore;

    invoke-direct {v10, v7, v15, v3, v4}, Landroidx/fragment/app/FragmentStore;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    invoke-virtual {v8, v10}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    goto/16 :goto_2f

    :cond_4f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v3, v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v2, v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    invoke-static {v3, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->_applyState(Landroid/view/View;I)V

    goto :goto_31

    :cond_50
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Completed executing operations from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void
.end method

.method public final executePendingOperations()V
    .locals 7

    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mIsContainerPostponed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->forceCompleteAllOperations()V

    iput-boolean v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mOperationDirectionIsPop:Z

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->cancel()V

    iget-boolean v4, v3, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mIsComplete:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->updateFinalState()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "FragmentManager"

    const-string v5, "SpecialEffectsController: Executing pending operations"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-virtual {v5}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->onStart()V

    goto :goto_2

    :cond_6
    iget-boolean v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mOperationDirectionIsPop:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController;->executeOperations(Ljava/util/ArrayList;Z)V

    iput-boolean v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mOperationDirectionIsPop:Z

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "FragmentManager"

    const-string v1, "SpecialEffectsController: Finished executing pending operations"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final findPendingOperation(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mIsCanceled:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final forceCompleteAllOperations()V
    .locals 9

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->updateFinalState()V

    iget-object v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->onStart()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v7, ""

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling running operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->cancel()V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    const-string v7, ""

    goto :goto_4

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling pending operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->cancel()V

    goto :goto_3

    :cond_7
    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final markPostponedState()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->updateFinalState()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mIsContainerPostponed:Z

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v3, v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->_from(Landroid/view/View;)I

    move-result v3

    iget v4, v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    if-eq v3, v5, :cond_0

    iget-object v1, v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mIsContainerPostponed:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateFinalState()V
    .locals 3

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget v1, v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mLifecycleImpact:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->_from(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mergeWith(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

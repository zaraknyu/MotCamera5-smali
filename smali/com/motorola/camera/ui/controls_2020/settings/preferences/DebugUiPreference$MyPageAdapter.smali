.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final fragmentList:Ljava/util/List;

.field public final mFragmentEventDispatcher:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

.field public final mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

.field public mFragmentMaxLifecycleEnforcer:Lcom/google/mlkit/vision/barcode/internal/zzj;

.field public final mFragments:Landroidx/collection/LongSparseArray;

.field public mHasStaleFragments:Z

.field public mIsInGracePeriod:Z

.field public final mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

.field public final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field public final mSavedStates:Landroidx/collection/LongSparseArray;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V
    .locals 3

    const-string v0, "fragmentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iget-object p1, p1, Landroidx/activity/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v1, Landroidx/collection/LongSparseArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1, v2}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1, v2}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    new-instance v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentEventDispatcher:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mIsInGracePeriod:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mHasStaleFragments:Z

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->fragmentList:Ljava/util/List;

    return-void
.end method

.method public static addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final containsItem(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final gcFragments()V
    .locals 8

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mHasStaleFragments:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->containsItem(J)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mIsInGracePeriod:Z

    if-nez v2, :cond_7

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mHasStaleFragments:Z

    :goto_1
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {v3, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    new-instance v1, Landroidx/collection/ArrayMap$KeyIterator;

    invoke-direct {v1, v0}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(Landroidx/collection/ArraySet;)V

    :goto_4
    invoke-virtual {v1}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->removeFragment(J)V

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final itemForViewHolder(I)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentMaxLifecycleEnforcer:Lcom/google/mlkit/vision/barcode/internal/zzj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/mlkit/vision/barcode/internal/zzj;

    invoke-direct {v0, p0}, Lcom/google/mlkit/vision/barcode/internal/zzj;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentMaxLifecycleEnforcer:Lcom/google/mlkit/vision/barcode/internal/zzj;

    invoke-static {p1}, Lcom/google/mlkit/vision/barcode/internal/zzj;->inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iput-object p1, v0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zze:Ljava/lang/Object;

    new-instance v1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zza:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;-><init>(ILjava/lang/Object;)V

    iput-object p1, v0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzc:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    new-instance p1, Landroidx/savedstate/Recreator;

    const/4 v1, 0x4

    invoke-direct {p1, v1, v0}, Landroidx/savedstate/Recreator;-><init>(ILjava/lang/Object;)V

    iput-object p1, v0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzd:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->removeFragment(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    int-to-long v0, p2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {p2, v3}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    invoke-virtual {v2, v0, v1, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/FrameLayout;

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->gcFragments()V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    sget p0, Landroidx/viewpager2/adapter/FragmentViewHolder;->$r8$clinit:I

    new-instance p0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveEnabled(Z)V

    new-instance p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentMaxLifecycleEnforcer:Lcom/google/mlkit/vision/barcode/internal/zzj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/mlkit/vision/barcode/internal/zzj;->inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p1, p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzf:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;

    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzc:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzd:Ljava/lang/Object;

    check-cast v1, Landroidx/savedstate/Recreator;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zze:Ljava/lang/Object;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentMaxLifecycleEnforcer:Lcom/google/mlkit/vision/barcode/internal/zzj;

    return-void
.end method

.method public final bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    const/4 p0, 0x1

    return p0
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->gcFragments()V

    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->removeFragment(J)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_0
    return-void
.end method

.method public final placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V
    .locals 8

    const-string v0, "f"

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "Design assumption violated."

    if-eqz v1, :cond_a

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_2

    if-nez v4, :cond_2

    new-instance p1, Lcom/motorola/camera/CameraKpi;

    invoke-direct {p1, p0, v1, v3}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    iget-object p0, v5, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;-><init>(Lcom/motorola/camera/CameraKpi;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, v3, :cond_8

    invoke-static {v4, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    :cond_4
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v2, p0, v1, v3}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    iget-object v3, v5, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    iget-object v3, v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    invoke-direct {v4, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;-><init>(Lcom/motorola/camera/CameraKpi;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentEventDispatcher:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    new-instance v4, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v4, v5}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {v4, v2, v1, p1, v0}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v1, p1}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    iget-boolean p1, v4, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-nez p1, :cond_5

    iput-boolean v2, v4, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    iget-object p1, v4, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1, v4, v2}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/BackStackRecord;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentMaxLifecycleEnforcer:Lcom/google/mlkit/vision/barcode/internal/zzj;

    invoke-virtual {p0, v2}, Lcom/google/mlkit/vision/barcode/internal/zzj;->updateFragmentMaxLifecycle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPostEvents(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_5
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This transaction is already being added to the back stack"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v3}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPostEvents(Ljava/util/List;)V

    throw p0

    :cond_6
    invoke-static {v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_7
    iget-boolean v0, v5, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    new-instance v0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeFragment(J)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->containsItem(J)Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    if-nez v2, :cond_2

    invoke-virtual {v3, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mHasStaleFragments:Z

    return-void

    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentEventDispatcher:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->containsItem(J)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v5, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v4

    invoke-static {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPostEvents(Ljava/util/List;)V

    invoke-virtual {v3, p1, p2, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v5, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    :try_start_0
    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v3, v2}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v3, v1}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    iget-boolean v1, v3, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v1, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, v3, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    iget-object v2, v3, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/BackStackRecord;Z)V

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPostEvents(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This transaction is already being added to the back stack"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPostEvents(Ljava/util/List;)V

    throw p1

    :cond_8
    invoke-static {v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public final setHasStableIds(Z)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

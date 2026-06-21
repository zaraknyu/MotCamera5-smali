.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public controlPanelShowing:Z

.field public final effects:Ljava/util/ArrayList;

.field public final selectedFilter:Landroidx/lifecycle/MutableLiveData;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->effects:Ljava/util/ArrayList;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->index:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    iput-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->selected:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_5

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "get(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/util/Pair;

    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroidx/lifecycle/LiveData;

    iput-object p2, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->bitmap:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    const-string v0, "Original"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v0, "first"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/utility/FilterMeisheUtil;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/utility/FilterMeisheUtil;->filterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f030001

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    const-string v1, "getStringArray(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/utility/FilterMeisheUtil;->orderedFilterNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0, p2}, Lkotlin/collections/ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    array-length p2, p2

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v1, " outside of filterNamesArray bounds "

    const-string v2, " for name "

    const-string v3, "filterIndex "

    invoke-static {v0, p2, v3, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->TAG:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1201f1

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->newFilterBg:Landroid/widget/ImageView;

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->newFilters:[Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-static {v1, p2}, Lkotlin/collections/ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->bitmap:Landroidx/lifecycle/LiveData;

    if-eqz p0, :cond_4

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->bitmapObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_4
    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->selected:Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_5

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->selectedObserver:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_5
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string/jumbo p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d006f

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onItemSelected(I)V
    .locals 5

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/SnapHelper$2;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v2, v4}, Landroidx/recyclerview/widget/SnapHelper$2;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    iput p1, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->setSelectedFilter(I)V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->bitmap:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->bitmapObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->selected:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->selectedObserver:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final setSelectedFilter(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/util/Pair;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheFilterName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheFileNameKey()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheEffectsModeKey()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->controlPanelShowing:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_COMPOSE_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IS_SELECTED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

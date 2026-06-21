.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public effects:Ljava/util/ArrayList;

.field public mEventHandler:Lcom/motorola/camera/EventListener;

.field public final selectedMode:Landroidx/lifecycle/MutableLiveData;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->effects:Ljava/util/ArrayList;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->selectedMode:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;->index:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->selectedMode:Landroidx/lifecycle/MutableLiveData;

    iput-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;->selected:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->effects:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "get(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/Pair;

    iget-object p0, p0, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/LiveData;

    iput-object p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;->bitmap:Landroidx/lifecycle/LiveData;

    if-eqz p0, :cond_1

    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;->bitmapObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_1
    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;->selected:Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;->selectedObserver:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_2
    :goto_0
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

    const p2, 0x7f0d0086

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;->bitmap:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;->bitmapObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;->selected:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureViewHolder;->selectedObserver:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final setSelectedMode$1(I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->selectedMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz p0, :cond_2

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REQUEST_REPEATING_REFRESH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_2
    :goto_1
    return-void
.end method

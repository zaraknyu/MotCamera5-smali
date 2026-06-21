.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

.field public final synthetic f$1:I

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;

.field public final synthetic f$5:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;IFFLcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$1:I

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$2:F

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$3:F

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$4:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;

    iput-object p6, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$5:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.RotationAwareLinearLayoutManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$2:F

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$3:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$1:I

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$4:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->setSelectedFilter(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda34;->f$5:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

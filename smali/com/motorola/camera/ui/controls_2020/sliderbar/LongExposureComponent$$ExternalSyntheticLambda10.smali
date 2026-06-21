.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

.field public final synthetic f$1:Ljava/lang/Integer;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;

.field public final synthetic f$5:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;Ljava/lang/Integer;FFLcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Integer;

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$2:F

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$3:F

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$4:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;

    iput-object p6, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$5:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.RotationAwareLinearLayoutManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Integer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$2:F

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$3:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$4:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$inflateViewStub$adapter$1;->setSelectedMode$1(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent$$ExternalSyntheticLambda10;->f$5:Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/LongExposureComponent;->updateModeText(I)V

    return-void
.end method

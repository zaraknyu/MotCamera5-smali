.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:Landroidx/compose/ui/geometry/Rect;

.field public final synthetic f$2:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/ui/geometry/Rect;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda3;->f$0:F

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/geometry/Rect;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/ui/unit/Density;

    const-string v0, "$this$offset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda3;->f$0:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    int-to-long p0, p1

    const/16 v1, 0x20

    shl-long/2addr p0, v1

    int-to-long v0, v0

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object v0
.end method

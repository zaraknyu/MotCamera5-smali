.class public abstract Lcom/motorola/camera/ui/compose/component/ComposeComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final composablePositionFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final context:Landroid/content/Context;

.field public final dualPane$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final eventListener:Lcom/motorola/camera/EventListener;

.field public final landScape$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    new-instance p1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    new-instance p1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->dualPane$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->landScape$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableSharedFlow$default(I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->composablePositionFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method


# virtual methods
.method public abstract Draw(ILandroidx/compose/runtime/ComposerImpl;)V
.end method

.method public final getDualPane()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->dualPane$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public abstract getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.end method

.method public isVisibilityHandled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Z)V
    .locals 0

    return-void
.end method

.method public onWindowHasFocus()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public rotate(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v0

    rsub-int p1, p1, 0x168

    int-to-float p1, p1

    sub-float/2addr p1, v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_0

    add-float/2addr p1, v2

    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    sub-float/2addr p1, v2

    :cond_1
    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    return-void
.end method

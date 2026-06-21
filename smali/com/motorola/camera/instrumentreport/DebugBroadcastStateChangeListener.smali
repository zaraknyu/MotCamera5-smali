.class public abstract Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"


# instance fields
.field public final cameraFsm:Ljava/lang/Object;

.field public final debugBroadcastHelper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/room/concurrent/FileLock;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    .line 3
    new-instance p1, Lcom/google/zxing/Result;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;I)V

    new-instance v1, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;I)V

    invoke-direct {p1, v0, v1}, Lcom/google/zxing/Result;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Ljava/lang/Object;

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract getShouldLoad()Z
.end method

.method public isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.class public final Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final activity:Landroid/app/Activity;

.field public final callback:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

.field public lastInfo:Landroidx/window/layout/WindowLayoutInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    iput-object p3, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->callback:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    return-void
.end method

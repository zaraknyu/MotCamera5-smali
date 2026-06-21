.class public final Lcom/motorola/camera/shared/OrientationEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/shared/OrientationEvent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/shared/OrientationEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/shared/OrientationEvent$1;->this$0:Lcom/motorola/camera/shared/OrientationEvent;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent$1;->this$0:Lcom/motorola/camera/shared/OrientationEvent;

    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    iget-boolean p0, v0, Lcom/motorola/camera/shared/OrientationEvent;->mIsSmallCliDisplay:Z

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x21

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

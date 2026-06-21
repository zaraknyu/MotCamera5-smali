.class public final Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mEventType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;->mEventType:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget p0, p0, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;->mEventType:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

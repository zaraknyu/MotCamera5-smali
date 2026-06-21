.class public abstract Lcom/motorola/camera/device/CameraService$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/zxing/Result;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/zxing/Result;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/zxing/Result;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    return-void
.end method

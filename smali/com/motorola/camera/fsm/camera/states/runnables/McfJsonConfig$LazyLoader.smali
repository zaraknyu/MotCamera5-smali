.class public abstract Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/zxing/Result;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/zxing/Result;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/Result;-><init>(IZ)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    return-void
.end method

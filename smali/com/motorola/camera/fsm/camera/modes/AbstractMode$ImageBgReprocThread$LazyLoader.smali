.class public abstract Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;

    const-string v1, "ImageBgReprocHandler"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread$LazyLoader;->INSTANCE:Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;

    return-void
.end method

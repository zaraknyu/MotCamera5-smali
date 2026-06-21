.class public Lorg/tensorflow/lite/gpu/GpuDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lorg/tensorflow/lite/annotations/UsedByReflection;
.end annotation


# instance fields
.field public delegateHandle:J


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lorg/tensorflow/lite/annotations/UsedByReflection;
    .end annotation

    .line 5
    new-instance v0, Lorg/tensorflow/lite/gpu/GpuDelegateFactory$Options;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-direct {p0, v0}, Lorg/tensorflow/lite/gpu/GpuDelegate;-><init>(Lorg/tensorflow/lite/gpu/GpuDelegateFactory$Options;)V

    return-void
.end method

.method public constructor <init>(Lorg/tensorflow/lite/gpu/GpuDelegateFactory$Options;)V
    .locals 6
    .annotation build Lorg/tensorflow/lite/annotations/UsedByReflection;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/tensorflow/lite/gpu/GpuDelegateNative;->init()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-static/range {v0 .. v5}, Lorg/tensorflow/lite/gpu/GpuDelegate;->createDelegate(ZZILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tensorflow/lite/gpu/GpuDelegate;->delegateHandle:J

    return-void
.end method

.method private static native createDelegate(ZZILjava/lang/String;Ljava/lang/String;I)J
.end method

.method private static native deleteDelegate(J)V
.end method


# virtual methods
.method public final close()V
    .locals 5

    iget-wide v0, p0, Lorg/tensorflow/lite/gpu/GpuDelegate;->delegateHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lorg/tensorflow/lite/gpu/GpuDelegate;->deleteDelegate(J)V

    iput-wide v2, p0, Lorg/tensorflow/lite/gpu/GpuDelegate;->delegateHandle:J

    :cond_0
    return-void
.end method

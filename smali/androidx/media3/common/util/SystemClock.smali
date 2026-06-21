.class public final Landroidx/media3/common/util/SystemClock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Landroidx/media3/common/util/SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/common/util/SystemClock;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/common/util/SystemClock;->DEFAULT:Landroidx/media3/common/util/SystemClock;

    return-void
.end method


# virtual methods
.method public final createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;
    .locals 1

    new-instance p0, Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p0, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;-><init>(Landroid/os/Handler;)V

    return-object p0
.end method

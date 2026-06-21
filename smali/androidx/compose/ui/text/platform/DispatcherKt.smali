.class public abstract Landroidx/compose/ui/text/platform/DispatcherKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FontCacheManagementDispatcher:Lkotlinx/coroutines/android/HandlerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    sput-object v0, Landroidx/compose/ui/text/platform/DispatcherKt;->FontCacheManagementDispatcher:Lkotlinx/coroutines/android/HandlerContext;

    return-void
.end method

.class public final Le/A0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Le/p0;

.field public static final synthetic g:[Lkotlin/reflect/KProperty;

.field public static final h:Lg/a0;

.field public static final i:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;


# instance fields
.field public final a:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final b:Lkotlinx/coroutines/SupervisorJobImpl;

.field public c:Ljava/lang/Object;

.field public d:Le/s0;

.field public final e:Lc/B;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v1, "getCurrentIndex()I"

    const/4 v2, 0x0

    const-class v3, Le/A0;

    const-string v4, "currentIndex"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Le/A0;->g:[Lkotlin/reflect/KProperty;

    new-instance v0, Le/p0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/A0;->f:Le/p0;

    new-instance v0, Lg/a0;

    invoke-direct {v0}, Lg/a0;-><init>()V

    sput-object v0, Le/A0;->h:Lg/a0;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Le/A0;->i:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x6

    const v2, 0x7fffffff

    invoke-static {v2, v1, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, p0, Le/A0;->a:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object v0

    iput-object v0, p0, Le/A0;->b:Lkotlinx/coroutines/SupervisorJobImpl;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Le/A0;->c:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lc/B;

    invoke-direct {v0, p1, p0}, Lc/B;-><init>(Ljava/lang/Integer;Le/A0;)V

    iput-object v0, p0, Le/A0;->e:Lc/B;

    return-void
.end method

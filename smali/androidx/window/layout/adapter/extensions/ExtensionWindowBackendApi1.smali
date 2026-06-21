.class public Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/adapter/WindowBackend;


# instance fields
.field public final component:Landroidx/window/extensions/layout/WindowLayoutComponent;

.field public final consumerAdapter:Landroidx/window/core/ConsumerAdapter;

.field public final consumerToToken:Ljava/util/LinkedHashMap;

.field public final contextToListeners:Ljava/util/LinkedHashMap;

.field public final globalLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final listenerToContext:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->component:Landroidx/window/extensions/layout/WindowLayoutComponent;

    iput-object p2, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->contextToListeners:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->listenerToContext:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->consumerToToken:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public registerLayoutChangeCallback(Landroid/content/Context;Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;)V
    .locals 11

    iget-object p2, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->contextToListeners:Ljava/util/LinkedHashMap;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/layout/adapter/extensions/MulticastConsumer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->listenerToContext:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0, p3}, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->addListener(Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;)V

    invoke-interface {v2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v5, Landroidx/window/layout/adapter/extensions/MulticastConsumer;

    invoke-direct {v5, p1}, Landroidx/window/layout/adapter/extensions/MulticastConsumer;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, p3}, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->addListener(Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;)V

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    iget-object p3, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->component:Landroidx/window/extensions/layout/WindowLayoutComponent;

    const-class v0, Landroidx/window/extensions/layout/WindowLayoutInfo;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    new-instance v3, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1;

    const-class v6, Landroidx/window/layout/adapter/extensions/MulticastConsumer;

    const-string v7, "accept"

    const-string v8, "accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v3 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p2, p3, v0, p1, v3}, Landroidx/window/core/ConsumerAdapter;->createSubscription(Ljava/lang/Object;Lkotlin/reflect/KClass;Landroid/app/Activity;Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1;)Landroidx/window/core/ConsumerAdapter$createSubscription$1;

    move-result-object p1

    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->consumerToToken:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Landroidx/window/extensions/layout/WindowLayoutInfo;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p0, p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, p0}, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public unregisterLayoutChangeCallback(Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;)V
    .locals 7

    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->contextToListeners:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->listenerToContext:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/layout/adapter/extensions/MulticastConsumer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_2
    iget-object v5, v4, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->registeredListeners:Ljava/util/LinkedHashSet;

    iget-object v6, v4, Landroidx/window/layout/adapter/extensions/MulticastConsumer;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;->consumerToToken:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;

    if-eqz p0, :cond_2

    iget-object p1, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$removeMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$obj:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->$javaConsumer:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.class public abstract Lkotlin/LazyKt__LazyJVMKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 2

    sget-object v0, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE:Lkotlin/UNINITIALIZED_VALUE;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 3
    new-instance p0, Lkotlin/UnsafeLazyImpl;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lkotlin/UnsafeLazyImpl;->initializer:Lkotlin/jvm/functions/Function0;

    .line 6
    iput-object v0, p0, Lkotlin/UnsafeLazyImpl;->_value:Ljava/lang/Object;

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    throw p0

    .line 10
    :cond_1
    new-instance p0, Lkotlin/SafePublicationLazyImpl;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lkotlin/SafePublicationLazyImpl;->initializer:Lkotlin/jvm/functions/Function0;

    .line 13
    iput-object v0, p0, Lkotlin/SafePublicationLazyImpl;->_value:Ljava/lang/Object;

    return-object p0

    .line 14
    :cond_2
    new-instance p0, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method public static lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;
    .locals 1

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v0, p0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

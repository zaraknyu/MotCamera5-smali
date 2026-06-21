.class public final Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final NULL_VALUE:Lkotlin/reflect/jvm/internal/ReflectProperties$Val$1;


# instance fields
.field public final initializer:Lkotlin/jvm/functions/Function0;

.field public volatile value:Ljava/lang/ref/SoftReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/ReflectProperties$Val$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->NULL_VALUE:Lkotlin/reflect/jvm/internal/ReflectProperties$Val$1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->value:Ljava/lang/ref/SoftReference;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->initializer:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->value:Ljava/lang/ref/SoftReference;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument for @NotNull parameter \'initializer\' of kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal.<init> must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->NULL_VALUE:Lkotlin/reflect/jvm/internal/ReflectProperties$Val$1;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->value:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->initializer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->value:Ljava/lang/ref/SoftReference;

    return-object v1
.end method

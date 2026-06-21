.class public final Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;
.super Lkotlin/reflect/jvm/internal/JvmFunctionSignature;
.source "SourceFile"


# instance fields
.field public final constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;->constructor:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-string p0, "getParameterTypes(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$3:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/16 v5, 0x18

    const-string v1, ""

    const-string v2, "<init>("

    const-string v3, ")V"

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

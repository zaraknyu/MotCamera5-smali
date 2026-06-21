.class public abstract Lkotlinx/serialization/json/internal/ArrayPoolsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_CHARS_IN_POOL:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlinx.serialization.json.pool.size"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :goto_0
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_1
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_2
    const/high16 v0, 0x200000

    :goto_3
    sput v0, Lkotlinx/serialization/json/internal/ArrayPoolsKt;->MAX_CHARS_IN_POOL:I

    return-void
.end method

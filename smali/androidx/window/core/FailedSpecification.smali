.class public final Landroidx/window/core/FailedSpecification;
.super Landroidx/window/core/SpecificationComputer;
.source "SourceFile"


# instance fields
.field public final exception:Landroidx/window/core/WindowStrictModeException;

.field public final message:Ljava/lang/String;

.field public final value:Ljava/lang/Object;

.field public final verificationMode:Landroidx/window/core/VerificationMode;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/window/core/AndroidLogger;Landroidx/window/core/VerificationMode;)V
    .locals 0

    const-string/jumbo p3, "value"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "verificationMode"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/core/FailedSpecification;->value:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/window/core/FailedSpecification;->message:Ljava/lang/String;

    iput-object p4, p0, Landroidx/window/core/FailedSpecification;->verificationMode:Landroidx/window/core/VerificationMode;

    new-instance p3, Landroidx/window/core/WindowStrictModeException;

    invoke-static {p1, p2}, Landroidx/window/core/SpecificationComputer;->createMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "message"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string p2, "getStackTrace(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->drop(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/StackTraceElement;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    iput-object p3, p0, Landroidx/window/core/FailedSpecification;->exception:Landroidx/window/core/WindowStrictModeException;

    return-void
.end method


# virtual methods
.method public final compute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->verificationMode:Landroidx/window/core/VerificationMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    return-object v2

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->value:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/window/core/FailedSpecification;->message:Ljava/lang/String;

    invoke-static {v0, p0}, Landroidx/window/core/SpecificationComputer;->createMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SidecarAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    iget-object p0, p0, Landroidx/window/core/FailedSpecification;->exception:Landroidx/window/core/WindowStrictModeException;

    throw p0
.end method

.method public final require(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;
    .locals 0

    return-object p0
.end method

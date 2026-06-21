.class public final Landroidx/window/core/ValidSpecification;
.super Landroidx/window/core/SpecificationComputer;
.source "SourceFile"


# instance fields
.field public final logger:Landroidx/window/core/AndroidLogger;

.field public final value:Ljava/lang/Object;

.field public final verificationMode:Landroidx/window/core/VerificationMode;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/window/core/VerificationMode;Landroidx/window/core/AndroidLogger;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verificationMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/core/ValidSpecification;->value:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/window/core/ValidSpecification;->verificationMode:Landroidx/window/core/VerificationMode;

    iput-object p3, p0, Landroidx/window/core/ValidSpecification;->logger:Landroidx/window/core/AndroidLogger;

    return-void
.end method


# virtual methods
.method public final compute()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/window/core/ValidSpecification;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final require(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;
    .locals 2

    iget-object v0, p0, Landroidx/window/core/ValidSpecification;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    new-instance p2, Landroidx/window/core/FailedSpecification;

    iget-object v1, p0, Landroidx/window/core/ValidSpecification;->logger:Landroidx/window/core/AndroidLogger;

    iget-object p0, p0, Landroidx/window/core/ValidSpecification;->verificationMode:Landroidx/window/core/VerificationMode;

    invoke-direct {p2, v0, p1, v1, p0}, Landroidx/window/core/FailedSpecification;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/window/core/AndroidLogger;Landroidx/window/core/VerificationMode;)V

    return-object p2
.end method

.class public final Lkotlinx/serialization/json/JsonLiteral;
.super Lkotlinx/serialization/json/JsonPrimitive;
.source "SourceFile"


# instance fields
.field public final content:Ljava/lang/String;

.field public final isString:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    const-class v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lkotlinx/serialization/json/JsonLiteral;

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    iget-object p1, p1, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    iget-object p0, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lkotlinx/serialization/json/internal/StringOpsKt;->printQuoted(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

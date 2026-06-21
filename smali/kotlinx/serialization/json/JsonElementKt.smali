.class public abstract Lkotlinx/serialization/json/JsonElementKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final jsonUnquotedLiteralDescriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.serialization.json.JsonUnquotedLiteral"

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v0, v1}, Lkotlinx/serialization/internal/Platform_commonKt;->InlinePrimitiveDescriptor(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/InlineClassDescriptor;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/JsonElementKt;->jsonUnquotedLiteralDescriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    return-void
.end method

.method public static final getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 3

    instance-of v0, p0, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/JsonPrimitive;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a JsonPrimitive"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseLongImpl(Lkotlinx/serialization/json/JsonPrimitive;)J
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/common/util/GlProgram;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->consumeNumericLiteral()J

    move-result-wide v1

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->consumeNextToken()B

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    iget v1, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "EOF"

    :goto_1
    const-string v1, "Expected input to contain a single valid number, but got \'"

    const-string v3, "\' after it"

    invoke-static {v1, p0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-static {v0, p0, v2, v3, v1}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_2
    return-wide v1
.end method

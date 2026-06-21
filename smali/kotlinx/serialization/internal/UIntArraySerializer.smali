.class public final Lkotlinx/serialization/internal/UIntArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UIntArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/UIntArraySerializer;

    sget-object v1, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    sput-object v0, Lkotlinx/serialization/internal/UIntArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntArraySerializer;

    return-void
.end method


# virtual methods
.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/UIntArray;

    iget-object p0, p1, Lkotlin/UIntArray;->storage:[I

    const-string p1, "$this$collectionSize"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    return p0
.end method

.method public final empty()Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [I

    new-instance v0, Lkotlin/UIntArray;

    invoke-direct {v0, p0}, Lkotlin/UIntArray;-><init>([I)V

    return-object v0
.end method

.method public final readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Lkotlinx/serialization/internal/UIntArrayBuilder;

    const-string v0, "builder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->decodeInt()I

    move-result p0

    invoke-static {p3}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)V

    iget-object p1, p3, Lkotlinx/serialization/internal/UIntArrayBuilder;->buffer:[I

    iget p2, p3, Lkotlinx/serialization/internal/UIntArrayBuilder;->position:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p3, Lkotlinx/serialization/internal/UIntArrayBuilder;->position:I

    aput p0, p1, p2

    return-void
.end method

.method public final toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/UIntArray;

    iget-object p0, p1, Lkotlin/UIntArray;->storage:[I

    const-string p1, "$this$toBuilder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlinx/serialization/internal/UIntArrayBuilder;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lkotlinx/serialization/internal/UIntArrayBuilder;->buffer:[I

    array-length p0, p0

    iput p0, p1, Lkotlinx/serialization/internal/UIntArrayBuilder;->position:I

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Lkotlinx/serialization/internal/UIntArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-object p1
.end method

.method public final writeContent(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;I)V
    .locals 3

    check-cast p2, Lkotlin/UIntArray;

    iget-object p2, p2, Lkotlin/UIntArray;->storage:[I

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    move-result-object v1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final arg$0:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

.field public final arg$1:Landroidx/room/SharedSQLiteStatement;

.field public final arg$2:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

.field public final arg$3:I

.field public final arg$4:I

.field public final arg$5:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;IILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$0:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$1:Landroidx/room/SharedSQLiteStatement;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$2:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$3:I

    iput p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$4:I

    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$5:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$0:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->annotationAndConstantLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$1:Landroidx/room/SharedSQLiteStatement;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$2:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$3:I

    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$4:I

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;->arg$5:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    invoke-interface/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadValueParameterAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;IILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

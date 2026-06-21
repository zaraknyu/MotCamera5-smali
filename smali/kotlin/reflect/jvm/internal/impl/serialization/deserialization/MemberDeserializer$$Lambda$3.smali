.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final arg$0:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

.field public final arg$1:Z

.field public final arg$2:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;ZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$3;->arg$0:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$3;->arg$1:Z

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$3;->arg$2:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$3;->arg$0:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->annotationAndConstantLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->asProtoContainer(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$3;->arg$1:Z

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$3;->arg$2:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    if-eqz v2, :cond_0

    invoke-interface {v1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadPropertyDelegateFieldAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadPropertyBackingFieldAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_2
    return-object p0
.end method

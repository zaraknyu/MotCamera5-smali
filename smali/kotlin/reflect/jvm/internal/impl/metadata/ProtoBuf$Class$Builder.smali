.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "SourceFile"


# instance fields
.field public bitField0_:I

.field public companionObjectName_:I

.field public compilerPluginData_:Ljava/util/List;

.field public constructor_:Ljava/util/List;

.field public contextReceiverTypeId_:Ljava/util/List;

.field public contextReceiverType_:Ljava/util/List;

.field public enumEntry_:Ljava/util/List;

.field public flags_:I

.field public fqName_:I

.field public function_:Ljava/util/List;

.field public inlineClassUnderlyingPropertyName_:I

.field public inlineClassUnderlyingTypeId_:I

.field public inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

.field public multiFieldValueClassUnderlyingName_:Ljava/util/List;

.field public multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

.field public multiFieldValueClassUnderlyingType_:Ljava/util/List;

.field public nestedClassName_:Ljava/util/List;

.field public property_:Ljava/util/List;

.field public sealedSubclassFqName_:Ljava/util/List;

.field public supertypeId_:Ljava/util/List;

.field public supertype_:Ljava/util/List;

.field public typeAlias_:Ljava/util/List;

.field public typeParameter_:Ljava/util/List;

.field public typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

.field public versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

.field public versionRequirement_:Ljava/util/List;


# direct methods
.method public static create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->flags_:I

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->compilerPluginData_:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final build()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Lcom/google/gson/JsonParseException;-><init>()V

    throw p0
.end method

.method public final buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;)V

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->flags_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->fqName_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->companionObjectName_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_3
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_4
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_5
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_6
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_7
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_8
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_9
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_a
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x800

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_b
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x1000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_c

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x1001

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_c
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x2000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_d

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x2001

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_d
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v4, 0x4000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_e

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_e
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    const v2, 0x8000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_f

    or-int/lit8 v3, v3, 0x8

    :cond_f
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingPropertyName_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    const/high16 v2, 0x10000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_10

    or-int/lit8 v3, v3, 0x10

    :cond_10
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    const/high16 v2, 0x20000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_11

    or-int/lit8 v3, v3, 0x20

    :cond_11
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingTypeId_:I

    iput v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_12

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v4, -0x40001

    and-int/2addr v2, v4

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_12
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_13

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v4, -0x80001

    and-int/2addr v2, v4

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_13
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v4, 0x100000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_14

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v4, -0x100001

    and-int/2addr v2, v4

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_14
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    const/high16 v2, 0x200000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_15

    or-int/lit8 v3, v3, 0x40

    :cond_15
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v4, 0x400000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_16

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v4, -0x400001

    and-int/2addr v2, v4

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_16
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    or-int/lit16 v3, v3, 0x80

    :cond_17
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->compilerPluginData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->compilerPluginData_:Ljava/util/List;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    :cond_18
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->compilerPluginData_:Ljava/util/List;

    iput-object p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->compilerPluginData_:Ljava/util/List;

    iput v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)V

    return-object v0
.end method

.method public final mergeFrom(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 254
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->PARSER:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 256
    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;-><init>(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 258
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    .line 259
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)V

    .line 262
    :cond_0
    throw p1
.end method

.method public final bridge synthetic mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 253
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)V

    return-object p0
.end method

.method public final mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)V
    .locals 8

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    .line 4
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 5
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->flags_:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    .line 7
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 8
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->fqName_:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 9
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    .line 10
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 11
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->companionObjectName_:I

    .line 12
    :cond_3
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    .line 17
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_0

    .line 18
    :cond_4
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_5

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    .line 20
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 21
    :cond_5
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeParameter_:Ljava/util/List;

    .line 22
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_6
    :goto_0
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v2, 0x10

    if-nez v0, :cond_9

    .line 26
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    .line 29
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_1

    .line 30
    :cond_7
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_8

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    .line 32
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 33
    :cond_8
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertype_:Ljava/util/List;

    .line 34
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_9
    :goto_1
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0x20

    if-nez v0, :cond_c

    .line 38
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 39
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    .line 41
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_2

    .line 42
    :cond_a
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_b

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    .line 44
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v3

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 45
    :cond_b
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->supertypeId_:Ljava/util/List;

    .line 46
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 47
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_c
    :goto_2
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 49
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v4, 0x40

    if-nez v0, :cond_f

    .line 50
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    .line 53
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_3

    .line 54
    :cond_d
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_e

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    .line 56
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 57
    :cond_e
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->nestedClassName_:Ljava/util/List;

    .line 58
    iget-object v5, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 59
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_f
    :goto_3
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v5, 0x80

    if-nez v0, :cond_12

    .line 62
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 64
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    .line 65
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_4

    .line 66
    :cond_10
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_11

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    .line 68
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v5

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 69
    :cond_11
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverType_:Ljava/util/List;

    .line 70
    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverType_:Ljava/util/List;

    .line 71
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    :cond_12
    :goto_4
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 74
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 75
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 76
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    .line 77
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_5

    .line 78
    :cond_13
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v6, 0x100

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_14

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    .line 80
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v6

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 81
    :cond_14
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->contextReceiverTypeId_:Ljava/util/List;

    .line 82
    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->contextReceiverTypeId_:Ljava/util/List;

    .line 83
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    :cond_15
    :goto_5
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 86
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 87
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 88
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    .line 89
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_6

    .line 90
    :cond_16
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v6, 0x200

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_17

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    .line 92
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v6

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 93
    :cond_17
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->constructor_:Ljava/util/List;

    .line 94
    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 95
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    :cond_18
    :goto_6
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 98
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 99
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 100
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    .line 101
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_7

    .line 102
    :cond_19
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v6, 0x400

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_1a

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    .line 104
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v6

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 105
    :cond_1a
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->function_:Ljava/util/List;

    .line 106
    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 107
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_1b
    :goto_7
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 110
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 111
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 112
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    .line 113
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_8

    .line 114
    :cond_1c
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v6, 0x800

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_1d

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    .line 116
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v6

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 117
    :cond_1d
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->property_:Ljava/util/List;

    .line 118
    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 119
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_1e
    :goto_8
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 121
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 122
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 123
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 124
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    .line 125
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_9

    .line 126
    :cond_1f
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v6, 0x1000

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_20

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    .line 128
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v6

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 129
    :cond_20
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeAlias_:Ljava/util/List;

    .line 130
    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 131
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_21
    :goto_9
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 133
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 134
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 135
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 136
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    .line 137
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_a

    .line 138
    :cond_22
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v6, 0x2000

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_23

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    .line 140
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v6

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 141
    :cond_23
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->enumEntry_:Ljava/util/List;

    .line 142
    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 143
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    :cond_24
    :goto_a
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 145
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 146
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 147
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 148
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    .line 149
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_b

    .line 150
    :cond_25
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/16 v6, 0x4000

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_26

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    .line 152
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v6

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 153
    :cond_26
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->sealedSubclassFqName_:Ljava/util/List;

    .line 154
    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 155
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    :cond_27
    :goto_b
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/lit8 v6, v0, 0x8

    if-ne v6, v1, :cond_28

    .line 157
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    .line 158
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 159
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingPropertyName_:I

    :cond_28
    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2a

    .line 160
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 161
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_29

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 162
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    if-eq v1, v6, :cond_29

    .line 163
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_c

    .line 164
    :cond_29
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 165
    :goto_c
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 166
    :cond_2a
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2b

    .line 167
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    .line 168
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 169
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->inlineClassUnderlyingTypeId_:I

    .line 170
    :cond_2b
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 171
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 172
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 173
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 174
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 175
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_d

    .line 176
    :cond_2c
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2d

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 178
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 179
    :cond_2d
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 180
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingName_:Ljava/util/List;

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    :cond_2e
    :goto_d
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 183
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 184
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 185
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 186
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 187
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_e

    .line 188
    :cond_2f
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_30

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 190
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 191
    :cond_30
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 192
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingType_:Ljava/util/List;

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    :cond_31
    :goto_e
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 195
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 196
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 197
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 198
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 199
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_f

    .line 200
    :cond_32
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_33

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 202
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 203
    :cond_33
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 204
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->multiFieldValueClassUnderlyingTypeId_:Ljava/util/List;

    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    :cond_34
    :goto_f
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_36

    .line 207
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 208
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_35

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 209
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    if-eq v1, v3, :cond_35

    .line 210
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    goto :goto_10

    .line 211
    :cond_35
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 212
    :goto_10
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 213
    :cond_36
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 214
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 215
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 216
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 217
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    .line 218
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_11

    .line 219
    :cond_37
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_38

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    .line 221
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 222
    :cond_38
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirement_:Ljava/util/List;

    .line 223
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 224
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    :cond_39
    :goto_11
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_3b

    .line 226
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 227
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3a

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 228
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    if-eq v1, v3, :cond_3a

    .line 229
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;

    const/4 v4, 0x2

    .line 230
    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;-><init>(I)V

    .line 231
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v4, v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->effect_:Ljava/util/List;

    .line 232
    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)V

    .line 233
    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)V

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Contract$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    goto :goto_12

    .line 234
    :cond_3a
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 235
    :goto_12
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 236
    :cond_3b
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->compilerPluginData_:Ljava/util/List;

    .line 237
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 238
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->compilerPluginData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 239
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->compilerPluginData_:Ljava/util/List;

    .line 240
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->compilerPluginData_:Ljava/util/List;

    .line 241
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    goto :goto_13

    .line 242
    :cond_3c
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3d

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->compilerPluginData_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->compilerPluginData_:Ljava/util/List;

    .line 244
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->bitField0_:I

    .line 245
    :cond_3d
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->compilerPluginData_:Ljava/util/List;

    .line 246
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->compilerPluginData_:Ljava/util/List;

    .line 247
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_3e
    :goto_13
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;->mergeExtensionFields(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    .line 249
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 250
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 251
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->concat(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    .line 252
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method

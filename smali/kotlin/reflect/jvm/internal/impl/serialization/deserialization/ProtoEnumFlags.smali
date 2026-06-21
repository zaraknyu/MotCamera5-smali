.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport;
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

.field public static final INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

.field public static final INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

.field public static final INSTANCE$3:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

.field public static final INSTANCE$4:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->INSTANCE$3:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->INSTANCE$4:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0

    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0

    :cond_4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0
.end method


# virtual methods
.method public canSynthesizeEnumEntries()Ljava/lang/Boolean;
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public create(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 0

    const-string/jumbo p0, "proto"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "flexibleId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lowerBound"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "upperBound"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This method should not be used."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reportCannotInferVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const-string v1, "descriptor"

    aput-object v1, p0, p1

    const-string p1, "kotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1"

    aput-object p1, p0, v0

    const/4 p1, 0x2

    const-string/jumbo v0, "reportCannotInferVisibility"

    aput-object v0, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportIncompleteHierarchy(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

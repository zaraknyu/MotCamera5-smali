.class public final Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;
.super Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $typeParameters:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;->$r8$classId:I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;->$typeParameters:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public approximateCapturedTypes()Z
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->approximateCapturedTypes()Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;->$typeParameters:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    return-object p0

    :pswitch_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;->$typeParameters:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;->$typeParameters:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;
.super Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->this$0:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public approximateCapturedTypes()Z
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->approximateCapturedTypes()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->this$0:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->approximateCapturedTypes()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public approximateContravariantCapturedTypes()Z
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->approximateContravariantCapturedTypes()Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final filterAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->this$0:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->filterAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->this$0:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->filterAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->this$0:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->get(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p1

    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    :cond_0
    invoke-static {p0, v0}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->createCapturedIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object v0

    :cond_1
    return-object v0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->this$0:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->get(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->this$0:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->this$0:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->isEmpty()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final prepareTopLevelType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "topLevelType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->this$0:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->prepareTopLevelType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo v0, "topLevelType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$replaceWithNonApproximating$1;->this$0:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->prepareTopLevelType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

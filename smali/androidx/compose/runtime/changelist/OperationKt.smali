.class public abstract Landroidx/compose/runtime/changelist/OperationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final findKotlinClass(Lcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->findKotlinClassOrContent(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Lcom/google/android/gms/tasks/zzb;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V
    .locals 2

    :goto_0
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-le p2, v0, :cond_0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-lt p2, v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Applier;->up()V

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->endGroup()V

    goto :goto_0
.end method

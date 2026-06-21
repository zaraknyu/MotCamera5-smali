.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;


# instance fields
.field public final synthetic $r8$classId:I

.field public final annotations:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    const-string v0, "fqNameToMatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    .line 2
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final findAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotationDescriptor;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotationDescriptor;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/TakeWhileSequence;

    move-result-object p0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderImpl$$Lambda$1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderImpl$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;I)V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    new-instance p1, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {p1, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, Landroidx/appcompat/widget/AppCompatHintHelper;->findAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Landroidx/appcompat/widget/AppCompatHintHelper;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/TakeWhileSequence;

    move-result-object p0

    iget-object p0, p0, Lkotlin/sequences/TakeWhileSequence;->sequence:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_1
    invoke-static {p0, p1}, Landroidx/appcompat/widget/AppCompatHintHelper;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lkotlin/collections/EmptyIterator;->INSTANCE:Lkotlin/collections/EmptyIterator;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/TakeWhileSequence;

    move-result-object p0

    new-instance v0, Lkotlin/sequences/FlatteningSequence;

    sget-object v1, Lkotlin/sequences/SequencesKt___SequencesKt$flatMap$2;->INSTANCE:Lkotlin/sequences/SequencesKt___SequencesKt$flatMap$2;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations$$Lambda$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations$$Lambda$1;

    invoke-direct {v0, p0, v2, v1}, Lkotlin/sequences/FlatteningSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    new-instance p0, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {p0, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FlatteningSequence;)V

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;->annotations:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

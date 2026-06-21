.class public interface abstract Lkotlinx/serialization/descriptors/SerialDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getAnnotations()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public abstract getElementAnnotations(I)Ljava/util/List;
.end method

.method public abstract getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
.end method

.method public abstract getElementIndex(Ljava/lang/String;)I
.end method

.method public abstract getElementName(I)Ljava/lang/String;
.end method

.method public abstract getElementsCount()I
.end method

.method public abstract getKind()Landroidx/compose/ui/unit/DpSize;
.end method

.method public abstract getSerialName()Ljava/lang/String;
.end method

.method public abstract isElementOptional(I)Z
.end method

.method public isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNullable()V
    .locals 0

    return-void
.end method

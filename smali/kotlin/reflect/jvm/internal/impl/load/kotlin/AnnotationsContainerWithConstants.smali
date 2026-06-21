.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/AnnotationsContainerWithConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final annotationParametersDefaultValues:Ljava/util/HashMap;

.field public final memberAnnotations:Ljava/util/HashMap;

.field public final propertyConstants:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AnnotationsContainerWithConstants;->memberAnnotations:Ljava/util/HashMap;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AnnotationsContainerWithConstants;->propertyConstants:Ljava/util/HashMap;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AnnotationsContainerWithConstants;->annotationParametersDefaultValues:Ljava/util/HashMap;

    return-void
.end method

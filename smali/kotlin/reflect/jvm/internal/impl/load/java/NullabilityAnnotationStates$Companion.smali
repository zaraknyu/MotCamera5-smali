.class public final Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStates$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStates$Companion;

.field public static final EMPTY:Lcom/motorola/camera/CameraKpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStates$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStates$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStates$Companion;

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-direct {v0, v1}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/util/Map;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStates$Companion;->EMPTY:Lcom/motorola/camera/CameraKpi;

    return-void
.end method

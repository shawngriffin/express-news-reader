.class public interface abstract annotation Lcom/j256/ormlite/field/ForeignCollectionField;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/j256/ormlite/field/ForeignCollectionField;
        columnName = ""
        eager = false
        foreignColumnName = ""
        maxEagerForeignCollectionLevel = 0x1
        orderColumnName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final MAX_EAGER_FOREIGN_COLLECTION_LEVEL:I = 0x1


# virtual methods
.method public abstract columnName()Ljava/lang/String;
.end method

.method public abstract eager()Z
.end method

.method public abstract foreignColumnName()Ljava/lang/String;
.end method

.method public abstract maxEagerForeignCollectionLevel()I
.end method

.method public abstract orderColumnName()Ljava/lang/String;
.end method
